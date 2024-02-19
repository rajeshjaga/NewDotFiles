#!/bin/bash
BAT=$(acpi | head -1 | grep -E -o '[0-9][0-9]?%')

if [ ${BAT%?} -ge 0 -a ${BAT%?} -lt 20 ]; then
    echo "  $BAT"
elif [ ${BAT%?} -ge 20 -a ${BAT%?} -lt 40 ]; then
    echo "  $BAT"
elif [ ${BAT%?} -ge 40 -a ${BAT%?} -lt 50 ]; then
    echo "  $BAT"
elif [ ${BAT%?} -ge 50 -a ${BAT%?} -lt 75 ]; then
    echo "  $BAT"
elif [ ${BAT%?} -ge 75 -a ${BAT%?} -lt 100 ]; then
    echo "  $BAT"
else
    echo 'No BAT found'
fi

exit 0
