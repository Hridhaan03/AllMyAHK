#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force
Menu, Tray, Icon, shell32.dll, 16 ;this changes the icon into a little laptop thingy. just useful for making it distinct from the others.



;STARTOFSCRIPT
SetTimer,UPDATEDSCRIPT,1000

UPDATEDSCRIPT:
FileGetAttrib,attribs,%A_ScriptFullPath%
IfInString,attribs,A
{
FileSetAttrib,-A,%A_ScriptFullPath%
SplashTextOn,,,Updated script,
Sleep,500
Reload
}
Return
;ENDOFSCRIPT 

closerAndSwitcher()
{
	Sendinput {space}
	Sendinput {m}
	Sendinput ^#{Left}
}

switchToDesktop1()
{
if WinActive("ahk_exe chrome.exe")
	closerAndSwitcher() 
else ifWinNotActive ("ahk_exe chrome.exe")
	WinActivate ahk_exe chrome.exe
	closerAndSwitcher()
}

switchToDesktop2()
{
sendinput ^#{Right}
}




`:: switchToDesktop1()
+`:: switchToDesktop2()






; mm m, Sendinput 
