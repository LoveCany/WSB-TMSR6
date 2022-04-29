C:\Users\WDAGUtilityAccount\Videos\TMSR6\VC_redist.x64.exe /install /quiet /norestart

set "exe=C:\Users\WDAGUtilityAccount\Videos\TMSR6\Pegasys Inc\TMPGEnc MPEG Smart Renderer 6\TMPGEncMPEGSmartRenderer6.exe"
mshta VBScript:Execute("Set a=CreateObject(""WScript.Shell""):Set b=a.CreateShortcut(a.SpecialFolders(""Desktop"") & ""\TMSR6.lnk""):b.TargetPath=""%exe%"":b.WorkingDirectory=""%~dp0"":b.Save:close")
