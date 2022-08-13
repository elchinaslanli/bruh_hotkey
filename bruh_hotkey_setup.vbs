Set Shell = CreateObject("WScript.Shell")
Dim scriptdir
scriptdir = CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName)

Set objFileToRead = CreateObject("Scripting.FileSystemObject").OpenTextFile(scriptdir & "\config.bruh",1)
strFileText = objFileToRead.ReadAll()
objFileToRead.Close
Set objFileToRead = Nothing

DesktopPath = Shell.SpecialFolders("Desktop")
Set link = Shell.CreateShortcut(DesktopPath & "\bruh.lnk")
' link.Arguments = "1 2 3"
link.Description = "bruh"
link.HotKey = strFileText
link.IconLocation = scriptdir & "\bruh.ico, 0"
link.TargetPath = scriptdir & "\bruh.vbs"
link.WindowStyle = 2
link.WorkingDirectory = scriptdir
link.Save