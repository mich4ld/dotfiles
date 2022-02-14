msgID="2137"
volume="$(pamixer --get-volume)"

if [ "$volume" -gt "65" ]; then
	dunstify  "  $volume" -t 800 -r $msgID -i -
elif [ "$volume" == "0" ]; then
	dunstify  "  Muted " -t 800 -r $msgID -i -
else
	dunstify  "  $volume" -t 800 -r $msgID -i -
fi
