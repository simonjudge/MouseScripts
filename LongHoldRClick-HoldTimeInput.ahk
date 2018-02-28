;; Little script to make a long left click turn into a right click. Useful for those who can not use two mouse buttons - e.g. people using an alternative mouse such as a head mouse.

FileReadLine, HOLD_TIME, %A_ScriptDir%/hold_time.txt, 1
HOLD_TIME := HOLD_TIME

If ErrorLevel 
	HOLD_TIME = 1000

TIMEOUT_TIME := 5*HOLD_TIME

LButton::
	SetTimer, LeftLock, -%HOLD_TIME%
	Click Left Down
	KeyWait, LButton, T%TIMEOUT_TIME%
	Click Left Up
	return

LeftLock:	
	if (GetKeyState("LButton", "P"))
		Click Right
	return