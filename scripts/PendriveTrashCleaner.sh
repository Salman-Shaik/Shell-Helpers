#!/bin/sh
DEVICE_PATH="/Volumes/"
if [ ! $1 ]
then
    echo "Please enter file name as last argument"
else
    DRIVE_NAME="$1"
    echo "Finding volume $DRIVE_NAME"

    DEVICE_PATH+="$DRIVE_NAME"
    TRASH_PATH="$DEVICE_PATH/.Trashes"
    if [ -d "$DEVICE_PATH" ]
    then
      echo "$DRIVE_NAME FOUND"
      echo "Performing Cleaning........"
      rm -rf "$TRASH_PATH"
      echo "Cleaned."
    else
      echo "$DRIVE_NAME NOT FOUND"
      echo "Make sure your device is connected."
    fi
fi
