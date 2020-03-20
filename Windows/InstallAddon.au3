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


While WinExists('View Downloads - Internet Explorer')
  Sleep(1000)
WEnd
Sleep(1000)
Run('C:\Program Files\Firefox Nightly\firefox.exe')
_WinWaitActivate("New Tab","")
If (WinExists("Default Browser","")) Then
  WinActivate("Default Browser","")
  Send("{ESC}")
EndIf
_WinWaitActivate("New Tab","")
Send("https://addons.mozilla.org/firefox/downloads/latest/belgium-eid/platform:5/addon-51244-latest.e/xpi {ENTER}")
Sleep(10000)
Send("{ALTDOWN}a{ALTUP}")
Sleep(10000)
Send("{ALTDOWN}r{ALTUP}")
_WinWaitActivate("New Tab","")
Send("{ALTDOWN}{F4}{ALTUP}")
#endregion --- Au3Recorder generated code End ---
