#! /bin/sh

chosen=$(printf "Lock\nLogout\nSuspend\nRestart\nShutdown" | fuzzel -d)

case "$chosen" in
	"Lock") swaylock -c 000000 ;;
	"Logout") loginctl terminate-session ${XDG_SESSION_ID-} ;;
	"Suspend") loginctl suspend ;;
	"Restart") loginctl reboot ;;
	"Shutdown") loginctl poweroff ;;
	*) exit 1 ;;
esac
