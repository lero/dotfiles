xrdb -merge ~/.Xresources
setxkbmap -variant intl
xset b off
xset r rate 350 35
urxvtd -q -o -f
exec i3
