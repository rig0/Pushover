# Pushover

Bash script for pushover notifications

This is a bash script that will allow you to send a [Pushover](http://pushover.net) message very easily from a script or terminal.

## Usage

Just put the script somewhere, and call it this way:

	> ./pushover <message> [title]

So, for example:

	> ./pushover "This is a test message from my Raspberry Pi."
	> ./pushover "This is another message." "Wow, dude, nice title"
	
## Some optional parameters may be included:
* ```attachment``` - an image attachment to send with the message; see attachments for more information on how to upload files
* ```device``` - your user's device name to send the message directly to that device, rather than all of the user's devices (multiple devices may be separated by a comma)
* ```title``` - your message's title, otherwise your app's name is used
* ```url``` - a supplementary URL to show with your message
* ```url_title``` - a title for your supplementary URL, otherwise just the URL is shown
* ```priority``` - send as -2 to generate no notification/alert, -1 to always send as a quiet notification, 1 to display as high-priority and bypass the user's quiet hours, or 2 to also require confirmation from the user
* sound - the name of one of the sounds supported by device clients to override the user's default sound choice
* ```timestamp``` - a Unix timestamp of your message's date and time to display to the user, rather than the time your message is received by our API

