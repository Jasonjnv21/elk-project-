#! bin/bash
sed s/INCORRECT_PASSWORD/ACCESS_DENIED/ LogA.txt > access_denied.txt
awk -F" " '{print $4, $6}' LogA.txt > filtered_logs.txt
