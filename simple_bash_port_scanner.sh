#! /bin/bash


echo "Enter IP address: "
read host

echo "Enter starting port: "
read starting_port

echo "Enter ending port: "
read ending_port

for ((counter=$starting_port; counter<=$ending_port; counter++))
	do
		#Replace counter with starting_port-counter+1?
		echo "Port $counter is open."
	done
