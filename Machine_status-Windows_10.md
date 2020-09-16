Machine Status-Windows 10
====

2016-09-23:  
Windows 10 Professional 64-bit (from Vbox)

Boot in: BIOS

    + add an user ".\Aaron"
    + add to a domain "aaron.local"

(This is a VM Image made by Virtualbox 6.10, for running EFI in Virtualbox.
Shutdown before rebooting to join to domain "cheng.local", which preventing Windows update expending harddisk.)

Remarks: Aaron, 42stephxxxxx0693

----

2020-03-15:

* God mode: create a new folder, then rename it to `上帝模式.{ED7BA470-8E54-465E-825C-99712043E01C}`.
* 卓越性能:  in powershell, type `powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61`

2020-03-17:

Seriously think about vscode remote development.

Windows's terminal sucks? I can work my computer with Linux's terminal. There are ways I do development on a Windows machine with Linux:
1. Working with a Linux VM (e.g. I have my own Linuxmint VM as a development host since 2017. I put it on my notebook at home, desktop at work and sync with Syncthing.) and then login with GUI or remote to it with [VSCode Remote Development](https://code.visualstudio.com/docs/remote/remote-overview) via SSH.
2. Since 2019, I can [developing in WSL](https://code.visualstudio.com/docs/remote/wsl): Microsoft has Linux built-in with [Windows Subsystem for Linux](https://www.microsoft.com/zh-cn/p/windows-terminal-preview/9n0dx20hk701) (a.k.a WSL).
  * [新生代 Windows 终端：Windows Terminal 的全面自定义](https://sspai.com/post/59380)
  * [在 Windows 上用 WSL 开发的操作体验指北](https://sspai.com/post/47719) -> [Dev on Windows with WSL](https://dowww.spencerwoo.com/) = [spencerwooo](https://github.com/spencerwooo) / [dowww](https://github.com/spencerwooo/dowww)

Google: vscode git doesn't work with wsl-> [VSCode: use WSL Git instead of Git for Windows](https://stackoverflow.com/questions/44441830/vscode-use-wsl-git-instead-of-git-for-windows) -> [Visual Studio Code - Developing in WSL](https://code.visualstudio.com/docs/remote/wsl). I work with `WSL:Ubuntu`.