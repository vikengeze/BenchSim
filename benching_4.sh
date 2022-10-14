#!/bin/bash

fp='/various/dstyliar/ML-DPC/ChampSimTraces/spec06/*'

for trace in $fp; do
	if [ $(cut -d. -f1-1 <<<$(basename $trace)) -eq 410 ] || [ $(cut -d. -f1-1 <<<$(basename $trace)) -ge 470 ]; then
		echo "Starting on trace file $(basename $trace)..."
		./benchmark.sh $trace
		echo "Done with trace file $(basename $trace)"
	fi
done