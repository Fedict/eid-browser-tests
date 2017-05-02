#region --- Au3Recorder generated code Start (v3.3.9.5 KeyboardLayout=00000813)  ---

#region --- Internal functions Au3Recorder Start ---
Func _Au3RecordSetup()
Opt('WinWaitDelay',100)
Opt('WinDetectHiddenText',1)
Opt('MouseCoordMode',0)
Local $aResult = DllCall('User32.dll', 'int', 'GetKeyboardLayoutNameW', 'wstr', '')
If $aResult[1] <> '00000813' Then
  MsgBox(64, 'Warning', 'Recording has been done under a different Keyboard layout' & @CRLF & '(00000813->' & $aResult[1] & ')')
EndIf

EndFunc

Func _WinWaitActivate($title,$text,$timeout=0)
	WinWait($title,$text,$timeout)
	If Not WinActive($title,$text) Then WinActivate($title,$text)
	WinWaitActive($title,$text,$timeout)
EndFunc

_AU3RecordSetup()
#endregion --- Internal functions Au3Recorder End ---


While Not FileExists('C:\Program Files\Nightly\firefox.exe')
  Sleep(1000)
WEnd
Run('C:\Program Files\Nightly\firefox.exe')
WinWait("Nightly Start Page")
If (WinExists("Default Browser","")) Then
  WinActivate("Default Browser","")
  Send("{ESC}")
EndIf
_WinWaitActivate("Nightly Start Page","")
Send("{CTRLDOWN}l{CTRLUP}https:{SHIFTDOWN}::{SHIFTUP}addons{SHIFTDOWN};{SHIFTUP}mozilla{SHIFTDOWN};{SHIFTUP}org{SHIFTDOWN}:{SHIFTUP}firefox{SHIFTDOWN}:{SHIFTUP}downloads{SHIFTDOWN}:{SHIFTUP}latest{SHIFTDOWN}:{SHIFTUP}belgium-eid{SHIFTDOWN}:{SHIFTUP}platform:{SHIFTDOWN}(:{SHIFTUP}addon-{SHIFTDOWN}(&è''{SHIFTUP}-latest{SHIFTDOWN};{SHIFTUP}e{BACKSPACE}xpi{ENTER}")
Sleep(10000)
Send("{ALTDOWN}a{ALTUP}")
Sleep(10000)
Send("{ALTDOWN}r{ALTUP}")
_WinWaitActivate("Nightly","")
Send("{ALTDOWN}{F4}{ALTUP}")
#endregion --- Au3Recorder generated code End ---
