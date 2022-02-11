# Create new Ultrawide mode
xrandr --newmode "2560x1080_60.00"  230.76  2560 2728 3000 3440  1080 1081 1084 1118  -HSync +Vsync

# Add mode to HDMI1
xrandr --addmode HDMI1 2560x1080_60.00

# Output
xrandr --output DP1 --off --output DP2 --off --output HDMI1 --mode 2560x1080_60.00 --pos 0x0 --rotate normal --output HDMI2 --primary --mode 1920x1080 --pos 2560x0 --rotate normal --output VGA1 --off --output VIRTUAL1 --off
