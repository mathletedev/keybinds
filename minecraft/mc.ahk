#MaxThreadsPerHotkey 2

`::
  Click Right
  Sleep 2
  Send {s down}
  Sleep 225
  Send {Lshift down}
  Sleep 120
  Click Right
  Send {Lshift up}

  while GetKeyState("`" "P")
  {
    Sleep 200
    Send {Lshift down}
    Sleep 140
    Click Right
    Sleep 30
    Send {Lshift up}
  }
  
  Send {s up}
Return

^+I::
  Send {Space down}
  Sleep 340
  Click Left
  Send {Space up}
Return

F2::
  Send {Ctrl down}
  Send {w down}

  while GetKeyState("F2", "P")
  {
    Click Left
  }

  Send {Ctrl up}
  Send {w up}
Return

CapsLock::
  while GetKeyState("CapsLock", "P")
  {
    Click Left
  }
Return

Tab::
  while GetKeyState("Tab", "P")
  {
    Click Right
  }
Return

Delete::
  isDown := !isDown

  Loop
  {
    if not isDown
      Break
    Click Right
    Sleep 1100
  }
Return

^Esc::
  ExitApp
Return

^P::
  Suspend
Return
