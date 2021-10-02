#! /bin/bash
#Pushover installation script by RamboRigs

if [ $# -lt 5 ]; then
  echo "Usage: install-pushover.sh servername userkey appkey sound url"
  exit
fi

BASEDIR=$(dirname "$0")
sed -i "s/USER_TOKEN=/USER_TOKEN=\"$2\"/g" $BASEDIR/pushover.sh
sed -i "s/DEFAULT_APP=/DEFAULT_APP=\"$3\"/g" $BASEDIR/pushover.sh
sed -i "s/DEFAULT_SOUND=/DEFAULT_SOUND=\"$4\"/g" $BASEDIR/pushover.sh
sed -i "s+DEFAULT_URL=+DEFAULT_URL=\"$5\"+g" $BASEDIR/pushover.sh
sed -i "s/DEFAULT_TITLE=/DEFAULT_TITLE=\"$1\"/g" $BASEDIR/pushover.sh

#mv $BASEDIR/pushover.sh /usr/bin/pushover
#chmod +x /usr/bin/pushover