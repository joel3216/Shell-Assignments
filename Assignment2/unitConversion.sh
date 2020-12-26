#! /bin/bash -x

inches=42
inches2ft=$(($inches/12))

plotAreaFt=$((60*40))
plotAreaM=$((($plotAreaFt*381)/1250))
awk 'BEGIN {print '$plotAreaFt*381/1250'}'

plotAreaAcres=$((($plotAreaFt*25)/43560))
awk 'BEGIN {print '$plotAreaFt*25/43560'}'
