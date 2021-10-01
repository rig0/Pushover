#! /bin/bash
MESSAGE=$1
TITLE=$2
SOUND=$3
APP_URL=$4
APP_TOKEN=$5
USER_TOKEN="YOUR USER KEY HERE"
DEFAULT_APP="DFAULT APP KEY HERE"
DEFAULT_SOUND="R2D2"
DEFAULT_URL=" "

if [ $# -eq 0 ]; then
    echo "Usage: ./pushover message title* sound* url* apptoken*"
	echo "*=Optional"
    exit
fi
if [ $# -lt 2 ]; then
	TITLE="DEFAULT TITLE"
    SOUND=$DEFAULT_SOUND
	APP_URL=$DEFAULT_URL
	APP_TOKEN=$DEFAULT_APP
fi
if [ $# -lt 3 ]; then
    SOUND=$DEFAULT_SOUND
	APP_URL=$DEFAULT_URL
	APP_TOKEN=$DEFAULT_APP
fi
if [ $# -lt 4 ]; then
	APP_URL=$DEFAULT_URL
	APP_TOKEN=$DEFAULT_APP
fi
if [ $# -lt 5 ]; then
	APP_TOKEN=$DEFAULT_APP
fi

wget https://api.pushover.net/1/messages.json --post-data="token=$APP_TOKEN&user=$USER_TOKEN&message=$MESSAGE&title=$TITLE&sound=$SOUND&url=$APP_URL" -qO- > /dev/null 2>&1 &