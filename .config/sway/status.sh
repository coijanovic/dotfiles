# The Sway configuration file in ~/.config/sway/config calls this script.
# You should see changes to the status bar after saving this script.
# If not, do "killall swaybar" and $mod+Shift+c to reload the configuration.

# The abbreviated weekday (e.g., "Sat"), followed by the ISO-formatted date
# like 2018-10-06 and the time (e.g., 14:01)
date_formatted=$(date "+%a %d.%m | %H:%M")

# Returns the battery status: "Full", "Discharging", or "Charging".
battery_status=$(acpi | cut -d " " -f 4-)

# Emojis and characters for the status bar
echo  $battery_status "|" $date_formatted
