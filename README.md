Setup development tool on Chrome OS Terminal (aka Crostini).

My PixelBook is my daily portable dev environment. Until recently, serious development on Chrome OS required to put the device in developer mode and use Crouton to create a chroot.

With Crostini, it is now possible to run a debian linux in a container. Enabling linux apps to run alongside Android and Chrome OS apps.

These scripts setup all the tools I need :
- NodeJS for React/NextJS apps
- OpenJDK for SpringBoot apps
- CloudFoundry CLI
- Bash scripting (jq, httpie, dot)
- VSCode for coding
- ...

Known to work on:
- Google PixelBook

Requirements:
- [Dev channel](https://support.google.com/chromebook/answer/1086915?hl=en)
- Settings | Linux (Beta) : Activated

Open the Terminal app, then

```bash
sudo apt update
sudo apt install git
git clone https://github.com/ukabu/dev-on-chromeos.git
cd dev-on-chromeos
./setup.sh
```

Install script are more or less idempotent. This mean that you can rerun them to update or if it fails without causing any issues.
