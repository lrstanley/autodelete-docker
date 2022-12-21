# AutoDelete Discord Bot Binaries/Container Image

This repository contains an auto-built container image, from the main branch of `github.com/riking/AutoDelete`, as
well as generated windows/linux/macos binaries for the bot within that repository.

**See more [here](https://github.com/riking/AutoDelete).**

<!-- template:begin:toc -->
<!-- do not edit anything in this "template" block, its auto-generated -->
## :link: Table of Contents

- [AutoDelete Discord Bot Binaries/Container Image](#autodelete-discord-bot-binariescontainer-image)
  - [Installation](#computer-installation)
    - [Container Images (ghcr)](#whale-container-images-ghcr)
    - [Simple Windows Execution](#computer-simple-windows-execution)
<!-- template:end:toc -->

## :computer: Installation

Check out the [releases](https://github.com/lrstanley/autodelete-docker/releases)
page for prebuilt versions.

### :whale: Container Images (ghcr)

```console
$ docker run -d \
    --name autodelete \
    -v config.yml:/autodelete/config.yml \
    -v ./data/:/autodelete/data/ \
    --restart=always \
    ghcr.io/lrstanley/autodelete-docker:latest
```

### :computer: Simple Windows Execution

1. Create a new folder called `autodelete`
2. Download the latest `autodelete_windows_amd64.exe` release file from [here](https://github.com/lrstanley/autodelete-docker/releases),
   and save it into the `autodelete` folder.
3. Create a `start.bat` file, with the following contents:
   ```bat
   @if not exist ".\data\" mkdir .\data
   @if not exist ".
