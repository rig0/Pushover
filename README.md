# Pushover

Bash script for pushover notifications.

## Usage

Use `install-pushover.sh` for a clean installation. Enter the default values below. (* = Optional):

	> ./install-pushover.sh "apptitle" userkey appkey sound* url*

Now you can can call `pushover` from anywhere. (* = Optional arguments that override defaults)

	> pushover "message" "title"* sound* url* apptoken*

Examples:

    > pushover "Server daily backup complete"
	> pushover "Download complete." "Deluge" custom_sound https://torboxpanel.com APP_TOKEN_HERE
    
If you're going to add an optional argument, all those before it must be provided. Adding a space in quotes will do (" ")

Ex:

    > pushover "Download complete." "Deluge" " " " " APP_TOKEN_HERE

