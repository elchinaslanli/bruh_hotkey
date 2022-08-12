@echo off
echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs
echo Dim strCurDir
echo strCurDir    = oWS.CurrentDirectory
echo sLinkFile = "%HOMEDRIVE%%HOMEPATH%\Desktop\bruh.lnk" >> CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut.vbs

echo oLink.TargetPath = strCurDir & "\bruh.vbs" , 0 >> CreateShortcut.vbs
echo oLink.Save >> CreateShortcut.vbs
cscript CreateShortcut.vbs
del CreateShortcut.vbs