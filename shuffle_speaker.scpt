tell application "Finder"
	set volume 1.5
end tell

tell application "System Preferences" to activate
tell application "System Preferences"
	reveal anchor "output" of pane id "com.apple.preference.sound"
end tell
tell application "System Events"
	tell process "System Preferences"
		repeat until exists tab group 1 of window "Sound"
		end repeat
		select (row 1 of table 1 of scroll area 1 of tab group 1 of window "Sound" whose value of text field 1 is "Speaker Name Goes Here")
	end tell
end tell

quit application "System Preferences"

tell application "Spotify"
	set shuffling to false
	set shuffling to true
	play track "spotify:track:[track hash]" in context "spotify:user:[your user name]:playlist:[your playlist name]"
end tell