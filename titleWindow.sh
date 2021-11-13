#!/usr/bin/env bash
#			 ___  _
#			| . ><_> ||_
#			| . \| |<_-<
#			|___/|_|/__/
#				 	 ||
#
#---------------------------------------------------------------------------------
# Script     : titleWindow.sh
# Description: Displays the title of the active window
# Version    : 0.1
# Author     : Bi$ https://github.com/BiS-9
# Date       : 2021-09-14
# License    : GNU/GPL v3.0
#---------------------------------------------------------------------------------
# Use        : ./titleWindow.sh or ./PATH/titleWindow.sh
#---------------------------------------------------------------------------------

set -o errexit      # The script ends if a command fails
set -o nounset      # The script ends if it uses an undeclared variable
set -o pipefail     # The script ends if a command fails in a pipe
# set -o xtrace     # If you want to debug
#---------------------------------------------------------------------------------

# Colour
FO="Orange" # Foreground colour

# Main program
TW=$(xdotool getactivewindow getwindowname)
T_W=$([[ $TW == $TW ]] && echo "<span foreground='$FO'>$TW</span>")

# Genmon
echo "<txt><b>$T_W</b></txt>"
echo "<tool>TW = $TW</tool>"
