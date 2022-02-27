#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force
Menu, Tray, Icon, shell32.dll, 285



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

; Volume up down and mute controls
F2:: send {Volume_Down 1} ;can also change this to mouse button 4 and 5, as given in the bottom lines ↓
F3:: send {Volume_Up 1} ;can also change this to mouse button 4 and 5, as given in the bottom lines ↓
F4:: send {Volume_Mute}
; XButton1:: send {Volume_Down 1}
; XButton2:: send {Volume_Up 1} 

return


