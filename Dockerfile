FROM golang:latest AS build-go
WORKDIR /build

RUN git clone https://github.com/riking/AutoDelete.git /build
RUN --mount=type=cache,target=/root/.cache \
	--mount=type=cache,target=/go \
	go get -u ./... \
	&& go mod tidy \
	&& CGO_ENABLED=0 go build -mod=mod \
	-ldflags '-d -s -w -extldflags=-static' \
	-tags=netgo,osusergo,static_build \
	-installsuffix netgo \
	-buildvcs=false \
	-trimpath \
	-v \
	-o /build/autodelete \
	github.com/riking/AutoDelete/cmd/autodelete

FROM alpine:3.23
WORKDIR /app

RUN apk add --no-cache ca-certificates

COPY --from=build-go /build/autodelete /app/autodelete

VOLUME /autodelete
WORKDIR /autodelete
CMD ["/app/autodelete"]
