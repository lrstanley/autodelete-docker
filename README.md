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
    - [💻 Linux](#computer-linux)
    - [Build From Source](#toolbox-build-from-source)
  - [Support &amp; Assistance](#raising_hand_man-support--assistance)
  - [🤝 Contributing](#handshake-contributing)
  - [License](#balance_scale-license)
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

If you'd like to use a script to handle everything for you, simply follow these steps:

1. Copy the `autodelete-windows` folder from this repository, into a directory locally.
2. Run `start.bat`, it will generate the config file. Update it with your configuration.
3. Re-run `start.bat`, it will download the latest autodelete binary, and then start the bot.

### :computer: Linux

```console
# download the appropriate binary for your platform, e.g:
wget -O autodelete-bot https://liam.sh/-/gh/dl/autodelete-docker/latest/autodelete_linux_amd64 # x86-64
wget -O autodelete-bot https://liam.sh/-/gh/dl/autodelete-docker/latest/autodelete_linux_arm   # arm

# make the binary executable, so you can run it:
chmod +x autodelete-bot

# add your configuration:
vim config.yml # or nano config.yaml

# run the bot:
./autodelete-bot
```

### :toolbox: Build From Source

Check out the steps within the `Dockerfile`, or the [source repos build documentation](https://github.com/riking/AutoDelete/blob/master/docs/build.sh).

<!-- template:begin:support -->
<!-- do not edit anything in this "template" block, its auto-generated -->
## :raising_hand_man: Support & Assistance

* :heart: Please review the [Code of Conduct](.github/CODE_OF_CONDUCT.md) for
     guidelines on ensuring everyone has the best experience interacting with
     the community.
* :raising_hand_man: Take a look at the [support](.github/SUPPORT.md) document on
     guidelines for tips on how to ask the right questions.
* :lady_beetle: For all features/bugs/issues/questions/etc, [head over here](https://github.com/lrstanley/autodelete-docker/issues/new/choose).
<!-- template:end:support -->

<!-- template:begin:contributing -->
<!-- do not edit anything in this "template" block, its auto-generated -->
## :handshake: Contributing

* :heart: Please review the [Code of Conduct](.github/CODE_OF_CONDUCT.md) for guidelines
     on ensuring everyone has the best experience interacting with the
    community.
* :clipboard: Please review the [contributing](.github/CONTRIBUTING.md) doc for submitting
     issues/a guide on submitting pull requests and helping out.
* :old_key: For anything security related, please review this repositories [security policy](https://github.com/lrstanley/autodelete-docker/security/policy).
<!-- template:end:contributing -->

<!-- template:begin:license -->
<!-- do not edit anything in this "template" block, its auto-generated -->
## :balance_scale: License

```
MIT License

Copyright (c) 2022 Liam Stanley <me@liamstanley.io>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

_Also located [here](LICENSE)_
<!-- template:end:license -->
