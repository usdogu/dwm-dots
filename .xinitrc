setxkbmap tr &
feh --randomize --bg-fill ~/wallpapers/* &
/usr/bin/emacs --daemon &
exec dbus-launch --sh-syntax --exit-with-session dwm
