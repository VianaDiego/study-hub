#!/bin/bash

[ -f "rx_poc.log" ] || echo -e 'year\tmon\tday\tobs_temp\tfc_temp'>rx_poc.log

city=Casablanca

curl -s https://wttr.in/$city?T --output weather_report

obs_temp=$(grep -m 1 F weather_report | cut -dF -f1-5 | grep -Eo "[0-9]+.{4}.{4}?")


fc_temp=$(grep F weather_report | cut -dF -f1-5 | grep -Eo "[0-9]+.{4}.{4}?" | sed -n 7p)


date_zone=$(grep -Eoim 1 "[a-z]+ [0-9]+ [a-z]+" weather_report)


day=$(date --date="$date_zone" "+%d")
mon=$(date --date="$date_zone" "+%m")
year=$(date --date="$date_zone" "+%Y")


record_log=$(echo -e "$year\t$mon\t$day\t$obs_temp\t$fc_temp")

echo "$record_log">>rx_poc.log