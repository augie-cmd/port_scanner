#! /bin/bash
# Note: This is a proof of concept project only.

# Example input: host = google.com, starting_port = 79,
# ending_port = 81
# Output will state the host's port 80 is open.


echo "Enter IP address: "
read host

echo "Enter starting port: "
read starting_port

echo "Enter ending port: "
read ending_port


for ((current_port=$starting_port; current_port<=$ending_port; current_port++))
	do
		# Uses netcat to scan ports and report open ports found.
		# -G gives netcat a specified number of seconds (used
		# 2 seconds in this example) to see if port is open.

		nc -zG 2 $host $current_port
	done
