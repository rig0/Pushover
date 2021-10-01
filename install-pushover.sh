#! /bin/bash
#Pushover installation script by RamboRigs

if [ $# -eq 0 ]; then
  echo "Usage: install-pushover.sh servername userkey appkey sound url"
  exit
fi

touch /usr/bin/pushover
chmod +x /usr/bin/pushover

echo "#! /bin/bash" >> /usr/bin/pushover
echo "#Pushover script by RamboRigs" >> /usr/bin/pushover
echo "MESSAGE=\$1" >> /usr/bin/pushover
echo "TITLE=\$2" >> /usr/bin/pushover
echo "SOUND=\$3" >> /usr/bin/pushover
echo "APP_URL=\$4" >> /usr/bin/pushover
echo "APP_TOKEN=\$5" >> /usr/bin/pushover
echo "USER_TOKEN=\"$2\"" >> /usr/bin/pushover
echo "DEFAULT_APP=\"$3\"" >> /usr/bin/pushover
echo "DEFAULT_SOUND=\"$4\"" >> /usr/bin/pushover
echo "DEFAULT_URL=\"$5\"" >> /usr/bin/pushover
echo "" >> /usr/bin/pushover
echo "if [ \$# -eq 0 ]; then" >> /usr/bin/pushover
echo "  echo \"Usage: ./pushover message title* sound* url* apptoken*\"" >> /usr/bin/pushover
echo "  echo \"*=Optional\"" >> /usr/bin/pushover
echo "  exit" >> /usr/bin/pushover
echo "fi" >> /usr/bin/pushover
echo "if [ \$# -lt 2 ]; then" >> /usr/bin/pushover
echo "  TITLE=\"$1\"" >> /usr/bin/pushover
echo "  SOUND=\$DEFAULT_SOUND" >> /usr/bin/pushover
echo "  APP_URL=\$DEFAULT_URL" >> /usr/bin/pushover
echo "  APP_TOKEN=\$DEFAULT_APP" >> /usr/bin/pushover
echo "fi" >> /usr/bin/pushover
echo "if [ \$# -lt 3 ]; then" >> /usr/bin/pushover
echo "  SOUND=\$DEFAULT_SOUND" >> /usr/bin/pushover
echo "  APP_URL=\$DEFAULT_URL" >> /usr/bin/pushover
echo "  APP_TOKEN=\$DEFAULT_APP" >> /usr/bin/pushover
echo "fi" >> /usr/bin/pushover
echo "if [ \$# -lt 4 ]; then" >> /usr/bin/pushover
echo "  APP_URL=\$DEFAULT_URL" >> /usr/bin/pushover
echo "  APP_TOKEN=\$DEFAULT_APP" >> /usr/bin/pushover
echo "fi" >> /usr/bin/pushover
echo "if [ \$# -lt 5 ]; then" >> /usr/bin/pushover
echo "  APP_TOKEN=\$DEFAULT_APP" >> /usr/bin/pushover
echo "fi" >> /usr/bin/pushover
echo "" >> /usr/bin/pushover
echo "wget https://api.pushover.net/1/messages.json --post-data=\"token=\$APP_TOKEN&user=\$USER_TOKEN&message=\$MESSAGE&title=\$TITLE&sound=\$SOUND&url=\$APP_URL\" -qO- > /dev/null 2>&1 &" >> /usr/bin/pushover
