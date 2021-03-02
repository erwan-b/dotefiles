#!/bin/zsh

# Get the dir
basedir="/sys/class/backlight/"
handler=$basedir$(ls $basedir)"/"

# get current & max brightness
old_brightness=$(cat $handler"brightness")
max_brightness=$(cat $handler"max_brightness")

# Calculate new own
old_brightness_p=$(( 100 * $old_brightness / $max_brightness ))
new_brightness_p=$(($old_brightness_p $1))
new_brightness=$(( $max_brightness * $new_brightness_p / 100 ))

# Writing the new brightness
#sudo chmod 666 $handler"brightness"
echo $new_brightness > $handler"brightness"
