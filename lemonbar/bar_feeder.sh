#!/bin/sh

# Date and time.
clock() {
        date +"%A, %b %-d. %-I:%M %P"
}

# Get battery.
battery() {
        cat /sys/class/power_supply/BAT1/capacity
}

# Brightness.
bright() {
        brillo
}

# Credit to co1ncidence on github for volume script.
#volume() {
#        echo "$(amixer sget Master | grep -i "right:" | awk -F '[][]' '{ print $2 }')"
#}
# Notice, volume is commented out until I fix it.

# Commence, the bar.
while true; do
        BAR_INPUT="%{l}Battery: $(battery)% %{c}$(clock) %{r}Brightness: $(bright)%"
        echo $BAR_INPUT
        sleep 1
done
