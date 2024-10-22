#! /bin/bash
# Pushover script by RamboRigs
# Usage: ./pushover message title* sound* url* apptoken*

# Fill in the defaults manually or with install script
MESSAGE=$1
USER_TOKEN=
DEFAULT_APP=
DEFAULT_SOUND=
DEFAULT_URL=
DEFAULT_TITLE=

TITLE=${2:-$DEFAULT_TITLE}
SOUND=${3:-$DEFAULT_SOUND}
APP_URL=${4:-$DEFAULT_URL}
APP_TOKEN=${5:-$DEFAULT_APP}

if [ -z "$MESSAGE" ]; then
    echo "Usage: ./pushover message title* sound* url* apptoken*"
    echo "*=Optional"
    exit 1
fi

curl -s \
  --form-string "token=$APP_TOKEN" \
  --form-string "user=$USER_TOKEN" \
  --form-string "message=$MESSAGE" \
  --form-string "title=$TITLE" \
  --form-string "sound=$SOUND" \
  --form-string "url=$APP_URL" \
  https://api.pushover.net/1/messages.json > /dev/null &