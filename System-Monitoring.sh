#!bin/bash

cpu_threshold=80
cpu_usage=$(top -bni 1 | grep 'Cpu(s)' awk '{print $2 + $4}')

if [[ $cpu_usage -gt $cpu_threshold ]]; then
  
  echo "WARNING: CPU usage is at $cpu_usage% (above threshold of $cpu_threshold%)"
  # You can add additional actions here, such as:
  # - Sending an email notification
  # - Throttling processes
  # - Scaling resources
fi

echo "Current CPU usage: $cpu_usage%"
