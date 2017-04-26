Func _Au3RecordSetup()
  Opt('WinWaitDelay',100)
  Opt('WinDetectHiddenText',1)
  Opt('MouseCoordMode',0)
  Local $aResult = DllCall('User32.dll', 'int', 'GetKeyboardLayoutNameW', 'wstr', '')
  If $aResult[1] <> '00000813' Then
    MsgBox(64, 'Warning', 'Recording has been done under a different Keyboard layout' & @CRLF & '(00000813->' & $aResult[1] & ')')
  EndIf
EndFunc
Func _WinWaitActivate($title, $text, $timeout=0)
  WinWait($title,$text,$timeout)
  If Not WinActive($title,$text) Then WinActivate($title,$text)
  WinWaitActive($title,$text,$timeout)
EndFunc
Run('"C:\Program Files\Internet Explorer\iexplore.exe" "https://download.mozilla.org/?product=firefox-nightly-stub&os=win&lang=en-US"')
_WinWaitActivate("Downloads weergeven - Internet Explorer","")
MouseClick("left", 447,137,1)
_WinWaitActivate("Default Browser","")
Send("{TAB}{SPACE}")
_WinWaitActivate("Nightly Start Page - Nightly","")
Send("{ALTDOWN}{F4}{ALTUP}")
_WinWaitActivate("Downloads weergeven - Internet Explorer","")
MouseClick("left",563,447,1)
