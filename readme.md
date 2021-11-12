# README

## Usage Steps

1. Change `HostFolder` in configuration file `tmsr.wsb` to where you want to map in your host system. If you want to use `Videos` folder in your user document, please change `%HomePath%` directly to absolute path.

2. Open sandbox by the configuration file, and pull installation batch in `scripts` folder to sandbox.

3. Execute installtion by running the batch file.

## For Users Outside China Mainland

Due to network reasons, direct connection to `raw.githubusercontent.com` is blocked in China Mainland. So I change the domain in command to an reverse proxy `fastgit.org` in sandbox configuration. If there is no problem, you can replace it to get better experience.

## Some Weird Problems in Windows Sandbox

- Sometimes its IO performance can be very bad but I cannot find why. If you encounter this, I am sorry there are no solutions.
- Because runtimes library of Windows Sandbox is not complete, TMSR may still raise errors about lack of runtimes even if the script has installed VC runtimes. But I have not met any errors of them. You can dismiss them and continue enjoying TMSR.
