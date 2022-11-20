#! /bin/bash


echo "table: $1"

python /home/winlab/smartNIC/generate_json.py $1 $2 $3 $4 $5
/opt/netronome/p4/bin/rtecli  -p 20206 -r 140.113.131.157 config-reload -c /home/winlab/smartNIC/tmp.p4cfg
exit

