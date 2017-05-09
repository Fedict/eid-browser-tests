on run (pincode)
	tell application "Safari"
		activate
		set URL of front document to "https://test.eid.belgium.be/"
	end tell
	delay 5
	tell application "System Events"
		click UI element "Ga door" of group 2 of sheet 1 of front window of application process "Safari"
		delay 0.5
	end tell
	tell application "System Events" to tell application process "SecurityAgent"
		set target to a reference to (text field 1 of window 1)
		if target exists then
			click target
			keystroke pincode
			key code 36 (* enter *)
		end if
	end tell
end run
