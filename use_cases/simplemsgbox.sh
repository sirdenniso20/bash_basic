#!/bin/bash
# demo of a message box with an OK button

# global variables / default variables
#MSGBOX=${MSGBOX=dialog}
MSGBOX=(dialog)
TITLE="Default"
MESSAGE="Some Mesage"
XCOORD=10
YCOORD=20

#function declarations - start
funcDisplayMsgBox () {
  $MSGBOX --title "$1" --msgbox "$2" "$3" "$4"
}

# function declarations - stop

# script - start
if [ "$1" == "shutdown" ]; then
  funcDisplayMsgBox "WARNING!" "Please press OK when you are ready to shut down the system" "10" "20"
  echo "SHUTTING DOWN NOW!!!"
else
  funcDisplayMsgBox "Boring..." "You are not asking for anything fun..." "10" "20"
  echo "Not doing anything, back to regular scripting..."
fi

# script - stop
