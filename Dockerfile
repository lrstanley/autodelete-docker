FROM golang:latest as build-go
WORKDIR /build

RUN git clone https://github.com/riking/AutoDelete.git /build
RUN --mount=type=cache,target=/root/.cache \
	--mount=type=cache,target=/go \
	CGO_ENABLED=0 go build \
	-ldflags '-d -s -w -extldflags=-static' \
	-tags=netgo,osusergo,static_build \
	-installsuffix netgo \
	-buildvcs=false \
	-trimpath \
    -v \
	-o /build/autodelete \
    github.com/riking/AutoDelete/cmd/autodelete

FROM alpine:3.17
WORKDIR /app

RUN apk add --no-cache ca-certificates
RUN if [ ! -e /etc/nsswitch.conf ];then echo 'hosts: files dns' > /etc/nsswitch.conf;fi

COPY --from=build-go /build/autodelete /app/autodelete

VOLUME /autodelete
WORKDIR /autodelete
CMD ["/app/autodelete"]
