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

Tippy(tipsHere, wait:=333)
{
ToolTip, %tipsHere%,,,8
SetTimer, notip, %wait% ;--in 1/3 seconds by default, remove the tooltip
}
notip:
	ToolTip,,,,8
	;removes the tooltip
return

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;start;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

switchToDesktop1()
{
if WinActive("ahk_exe chrome.exe")
	{
	Sendinput !+{m}
	Sendinput {space}
	sleep 10
	Sendinput ^#{Left}
	return
	}	
else
	WinActivate ahk_exe chrome.exe
	Sendinput !+{m}
	Sendinput {space}
	sleep 10
	Sendinput ^#{Left}
Tippy("switched to desktop 1")
return
}

switchToDesktop2()
{
sendinput ^#{Right}
Tippy("switched to desktop 2")
return
}


Unmuter()
{
Sendinput !+{m}
Tippy("Unmuted", 500)
return

}



`:: switchToDesktop1()
+`:: switchToDesktop2()
Insert:: Unmuter()





; mm m, Sendinput  
