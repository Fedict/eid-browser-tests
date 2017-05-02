on run
	tell application "Safari"
		activate
		set URL of front document to "https://download.mozilla.org/?product=firefox-nightly-latest-l10n-ssl&os=osx&lang=nl"
	end tell
	delay 15
	do shell script "hdiutil mount ~/Downloads/firefox*dmg"
	tell application "Finder" to duplicate alias "Nightly:FirefoxNightly.app" to alias "Macintosh HD:Applications" with replacing
	do shell script "hdiutil eject disk1"
	do shell script "rm ~/Downloads/firefox*dmg"
end run
