currSlot := 1
maxInv := 5

Return

$5::
  maxInv := 5
  Send {Enter}Inventory adjusted to 5{Enter}
Return

$6::
  maxInv := 6
  Send {Enter}Inventory adjusted to 6{Enter}
Return

$7::
  maxInv := 7
  Send {Enter}Inventory adjusted to 7{Enter}
Return

$8::
  maxInv := 8
  Send {Enter}Inventory adjusted to 8{Enter}
Return

$9::
  maxInv := 9
  Send {Enter}Inventory adjusted to 9{Enter}
Return

$0::
  maxInv := 10
  Send {Enter}Inventory adjusted to 10{Enter}
Return

WheelUp::
  currSlot += 1
  if (currSlot > maxInv)
    currSlot := 1
  if (currSlot = 10)
    Send 0
  else Send %currSlot%
Return

WheelDown::
  currSlot -= 1
  if (currSlot < 1)
    currSlot := maxInv
  if (currSlot = 10)
    Send 0
  else Send %currSlot%
Return

$Space::
  Send 5
  MouseGetPos posx, posy
  Click posx, posy
  Sleep 125
  Send 1
  Click posx, posy
  currSlot := 1
Return

Shift::
  if (maxInv >= 7) {
    Send 7
    MouseGetPos posx, posy
    Click posx, posy
    currSlot := 7
  }
Return

LButton::
  Send 1
  while GetKeyState("LButton", "P")
  {
    MouseGetPos posx, posy
    Click posx, posy
  }
  currSlot := 1
Return

RButton::
  Send 2
  while GetKeyState("RButton", "P")
  {
    MouseGetPos posx, posy
    Click posx, posy
  }
  currSlot := 2
Return

$Q::
  while GetKeyState("Q", "P")
  {
    Send q
    MouseGetPos posx, posy
    Click posx, posy
  }
  Send 1
  currSlot := 1
Return

$F::
  Send {Enter}noob{Enter}
Return

$G::
  Send {Enter}git gud{Enter}
Return

Esc::ExitApp
^P::Pause
