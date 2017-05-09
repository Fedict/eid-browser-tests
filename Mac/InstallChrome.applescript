on run
	tell application "Safari"
		activate
		set URL of front document to "https://www.google.com/chrome/browser/canary.html"
	end tell
	delay 15
	tell application "System Events"
		click static text 1 of UI element "Chrome Canary downloaden" of group 3 of UI element 1 of scroll area 1 of group 1 of group 1 of tab group 1 of splitter group 1 of window "Chrome-browser" of application process "Safari"
		delay 0.1
		click UI element "Accepteren en installeren" of group 5 of group 1 of UI element 1 of scroll area 1 of group 1 of group 1 of tab group 1 of splitter group 1 of window "Chrome-browser" of application process "Safari"
	end tell
	-- allow for download to finish
	delay 15
	do shell script "hdiutil mount ~/Downloads/googlechrome.dmg"
	set canaryapp to "Google Chrome Canary:Google Chrome Canary.app"
	tell application "Finder"
		duplicate alias canaryapp to alias "Macintosh HD:Applications" with replacing
		eject "Google Chrome Canary"
	end tell
	do shell script "rm ~/Downloads/googlechrome.dmg"
end run
