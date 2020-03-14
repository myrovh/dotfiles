#!/bin/sh

# Return format {"text": "$text", "tooltip": "$tooltip", "class": "$class", "percentage": $percentage }
# pipe script output through jq --unbuffered --compact-output

if [ "$(pgrep -x redshift)" ]; then
	temp=$(redshift -p 2>/dev/null | grep temp | cut -d ":" -f 2 | tr -dc "[:digit:]")

	echo "{ \"text\": \"On\", \"tooltip\": \"$temp\", \"percentage\": 100 }"
else
	echo "{ \"text\": \"Off\", \"percentage\": 0 }"
fi
