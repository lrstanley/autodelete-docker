## Container Image for AutoDelete Discord Bot

* See more [here](https://github.com/riking/AutoDelete).

## Usage

```console
$ docker run -d \
    --name autodelete \
    -v config.yml:/autodelete/config.yml \
    -v ./data/:/autodelete/data/ \
    --restart=always \
    ghcr.io/lrstanley/autodelete-docker:master
```
