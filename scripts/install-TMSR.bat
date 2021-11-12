@echo off

md "%HomePath%/Downloads/TMSR6InstallTmp"

set ENV_PATH=%HomePath%/Downloads/TMSR6InstallTmp
cd %ENV_PATH%

echo Download TMSR and VC Runtimes
curl -L "https://download1.pegasys-inc.com/download_files/tmsr6_ja/TMSR6_6.0.8.9_setup_ja.exe" --output "TMSR6_6.0.8.9_setup_ja.exe"
curl -L "https://download.visualstudio.microsoft.com/download/pr/d3cbdace-2bb8-4dc5-a326-2c1c0f1ad5ae/9B9DD72C27AB1DB081DE56BB7B73BEE9A00F60D14ED8E6FDE45DAB3E619B5F04/VC_redist.x64.exe" --output "vc_redist.x64.exe"

echo try install TMSR to extract bin from auto-installer
start TMSR6_6.0.8.9_setup_ja.exe

echo Continue if installer is fully extracted
pause

echo Extracting bin and adding TMSR6 icon to desktop
msiexec /a "%Temp%\D0\TMSR6Retail_JA.msi" /qb TARGETDIR=%cd%

set "exe=%ENV_PATH%\Pegasys Inc\TMPGEnc MPEG Smart Renderer 6\TMPGEncMPEGSmartRenderer6.exe"
mshta VBScript:Execute("Set a=CreateObject(""WScript.Shell""):Set b=a.CreateShortcut(a.SpecialFolders(""Desktop"") & ""\TMSR6.lnk""):b.TargetPath=""%exe%"":b.WorkingDirectory=""%~dp0"":b.Save:close")

echo Installing VC Runtimes...
VC_redist.x64.exe

echo Done! Now you can close TMSR installer and enjoy TMSR free trial!
pause
