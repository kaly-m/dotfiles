urxvtd -q -o -f
xrdb -merge ~/.config/X11/.Xresources
setxkbmap -option caps:escape
setxkbmap -option escape:caps
exec i3
