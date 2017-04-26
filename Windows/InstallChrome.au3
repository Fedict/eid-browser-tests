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
Run('ChromeSetup.exe')
_WinWaitActivate("Welkom bij Chrome - Google Chrome","")
Send("{ALTDOWN}{F4}{ALTUP}")
