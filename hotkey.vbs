Set Shell = CreateObject("WScript.Shell")
DesktopPath = Shell.SpecialFolders("Desktop")
Set link = Shell.CreateShortcut(DesktopPath & "\bruh.lnk")
' link.Arguments = "1 2 3"
link.Description = "bruh"
link.HotKey = "CTRL+ALT+B"
' link.IconLocation = "app.exe,1"
Dim scriptdir
scriptdir = CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName)
link.TargetPath = scriptdir & "\bruh.vbs"
link.WindowStyle = 2
link.WorkingDirectory = scriptdir
link.Save