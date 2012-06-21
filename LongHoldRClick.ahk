;; Little script to make a long left click turn into a right click. Useful for those who can not use two mouse buttons - e.g. people using an alternative mouse such as a head mouse.
LButton::
	SetTimer, LeftLock, -1000
	Click Left Down
	KeyWait, LButton
	Click Left Up
	return

LeftLock:	
	if (GetKeyState("LButton", "P"))
		Click Right
	return