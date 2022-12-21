# AutoDelete Discord Bot Binaries/Container Image

This repository contains an auto-built container image, from the main branch of `github.com/riking/AutoDelete`, as
well as generated windows/linux/macos binaries for the bot within that repository.

**See more [here](https://github.com/riking/AutoDelete).**

<!-- template:begin:toc -->
<!-- do not edit anything in this "template" block, its auto-generated -->
## :link: Table of Contents

<!-- template:end:toc -->

## :computer: Installation

Check out the [releases](https://github.com/lrstanley/geoip/releases)
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
* :lady_beetle: For all features/bugs/issues/questions/etc, [head over here](https://github.com/lrstanley/geoip/issues/new/choose).
<!-- template:end:support -->

<!-- template:begin:contributing -->
<!-- do not edit anything in this "template" block, its auto-generated -->
## :handshake: Contributing

* :heart: Please review the [Code of Conduct](.github/CODE_OF_CONDUCT.md) for guidelines
     on ensuring everyone has the best experience interacting with the
    community.
* :clipboard: Please review the [contributing](.github/CONTRIBUTING.md) doc for submitting
     issues/a guide on submitting pull requests and helping out.
* :old_key: For anything security related, please review this repositories [security policy](https://github.com/lrstanley/geoip/security/policy).
<!-- template:end:contributing -->

<!-- template:begin:license -->
<!-- do not edit anything in this "template" block, its auto-generated -->
## :balance_scale: License
<!-- template:end:license -->
