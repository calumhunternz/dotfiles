DEVICE_NAME="1A582004:00 06CB:CD73 Touchpad"

TRACKPAD_STATE=$(xinput list-props "$DEVICE_NAME" | grep "Device Enabled" | awk '{print $4}')

if [ "$TRACKPAD_STATE" -eq 1 ]; then
  xinput disable "$DEVICE_NAME"
  echo "Trackpad disabled"
else
  xinput enable "$DEVICE_NAME"
  echo "Trackpad enabled"
fi
