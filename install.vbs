Option Explicit
Dim objShell, objFSO, wshShell
Dim strFontSourcePath, objFolder, objFont, objNameSpace, objFile

Set objShell = CreateObject("Shell.Application")
Set wshShell = CreateObject("WScript.Shell")
Set objFSO = createobject("Scripting.Filesystemobject")

strFontSourcePath = Replace(WScript.ScriptFullName, WScript.ScriptName, "")

If objFSO.FolderExists(strFontSourcePath) Then

	Set objNameSpace = objShell.Namespace(strFontSourcePath)
	Set objFolder = objFSO.getFolder(strFontSourcePath)
	
	For Each objFile In objFolder.files
		
		If LCase(right(objFile,4)) = ".ttf" OR LCase(right(objFile,4)) = ".otf" Then
			If objFSO.FileExists(wshShell.SpecialFolders("Fonts") & objFile.Name) = False Then
				Set objFont = objNameSpace.ParseName(objFile.Name)
				objFont.InvokeVerb("Install")
				
				Set objFont = Nothing
			End If
		End If
	Next
Else
	'Wscript.Echo "Font Source Path does not exists"
End If
'
Set objShell = CreateObject("Wscript.shell")
objShell.run("powershell -executionpolicy bypass -file .\change_font_colors.ps1")