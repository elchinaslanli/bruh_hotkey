Set Shell = CreateObject("WScript.Shell")
Dim scriptdir
scriptdir = CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName)
DesktopPath = Shell.SpecialFolders("Desktop")
Set link = Shell.CreateShortcut(DesktopPath & "\bruh.lnk")
' link.Arguments = "1 2 3"
link.Description = "bruh"
link.HotKey = "CTRL+ALT+B"
link.IconLocation = scriptdir & "\bruh.ico, 0"
link.TargetPath = scriptdir & "\bruh.vbs"
link.WindowStyle = 2
link.WorkingDirectory = scriptdir
link.Save