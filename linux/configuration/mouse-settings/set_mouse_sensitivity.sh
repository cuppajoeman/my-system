#!/usr/bin/env bash
xinput --list
read -p "Which of the above devices would you like to change the mouse sensitivity? (give the id number)" id
echo    # (optional) move to a new line
read -p "What would you like to change your mouse sensivity to?" sens
# Add a scalar multiplier to the matrix
xinput set-prop $id "Coordinate Transformation Matrix" $sens 0 0 0 $sens 0 0 0 1

