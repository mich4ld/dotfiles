msgID="2345"
muted="$(pamixer --get-mute)"

if [ $muted = "true" ]
then
	dunstify  "  Muted " -t 800 -r $msgID -i -
else
	volume="$(pamixer --get-volume)"
	dunstify  "  $volume" -t 800 -r $msgID -i -
	
fi
