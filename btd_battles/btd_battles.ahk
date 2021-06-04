currSlot := 1

WheelUp::
  currSlot -= 1
  if (currSlot < 1)
    currSlot := maxInv
  else Send %currSlot%
Return

WheelDown::
  currSlot += 1
  if (currSlot > 4)
    currSlot := 1
  else Send %currSlot%
Return

CapsLock::
	Send 6
	Click Left
Return

Shift::
	Send {Tab}
Return

D::
	Send >
Return

A::
	Send <
Return

^Esc::
  ExitApp
Return

^P::
  Suspend
Return
