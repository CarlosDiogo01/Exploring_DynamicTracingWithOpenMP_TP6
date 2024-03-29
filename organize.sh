#!/bin/bash


cd results_csv

for schedule in static dynamic guided
do
	for nthreads in 1 2 4 8 16 32 64
	do
		cat *"_"$schedule"_"$nthreads"_"*".csv" | grep "tempo ->" | sed 's/[^0-9.]*//g' | sort > $schedule"_"$nthreads"_time.csv"
	done
done
