xset +fp /usr/share/fonts/local
xrdb -merge ~/.Xresources
setxkbmap -variant intl
urxvtd -q -o -f
wmname LG3D
xautolock &
exec ck-launch-session awesome
