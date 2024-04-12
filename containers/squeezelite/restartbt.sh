#!/bin/bash
DEVICE="00:13:EF:BF:FA:D6"
counter=0
status=1

connected=$(bluetoothctl info "$DEVICE" | grep -q 'Connected: yes'  && echo 0 || echo 1)

if [[ $connected -eq 0 ]]; then
   status=0
fi

until [ "$counter" -gt 5 ] || [ "$status" -eq 0 ]; do
  counter=$(( $counter + 1 ))
  echo "$(date): Connecting to BT device: $DEVICE"
  status=$(bluetoothctl connect "$DEVICE" 2>&1> /dev/null && echo 0 || echo 1)
done

if [[ "$status" == "1" ]]; then
  echo "$(date): Failed to connect to BT device: $DEVICE"
  curl https://reset.schizo.eu
  exit 1
fi

id
echo "$(date): Starting squeezelite"
squeezelite -n SqueezeLite -M SqueezeLite -s 192.168.101.226:3483

echo "$(date): Squeezelite stopped"
exit 1
