# Pushover

Bash script for pushover notifications.

## Usage

### Move into the directory
```bash
cd Pushover
```
### Use `install-pushover.sh` for a clean installation. Enter the default values below. (* = Optional):
```bash
chmod +x ./install-pushover.sh && sudo ./install-pushover.sh "apptitle" userkey appkey sound* url*
```
### Now you can can call `pushover` from anywhere. (* = Optional arguments that override defaults)
```bash
pushover "message" "title"* sound* url* apptoken*
```
### Examples:
```bash
pushover "Server daily backup complete"
```
```bash
pushover "Download complete." "Deluge" custom_sound https://torboxpanel.com APP_TOKEN_HERE
```

#### When adding an optional argument, all those before it must be provided. Adding a space in quotes will do (" ")

```bash
pushover "Download complete." "Deluge" custom_sound " " APP_TOKEN_HERE
```
