Dim FileSysObj
Dim ShellObj
Dim ShortcutFile
Set FileSysObj = CreateObject("Scripting.FileSystemObject")
Set ShellObj = CreateObject("WScript.Shell")
ShortcutFile = ShellObj.SpecialFolders("Startup") & + "\Proxiani-Chat-Server.lnk"

If FileSysObj.FileExists(ShortcutFile) Then
 FileSysObj.DeleteFile ShortcutFile
 MsgBox "Disabled auto start for Proxiani Chat Server.", 64, "Proxiani Chat Server"
Else
 MsgBox "Auto start for Proxiani Chat Server is already disabled.", 64, "Proxiani Chat Server"
End If
