#!/bin/bash

if [ $# -eq 2 ]; then
	if [ "$1" == "add" ]; then
		if [ -f tasks.txt ]; then
			num_line=$(wc -l <tasks.txt)
		else
			num_line=0
		fi

		line_num=$((num_line + 1))
		echo ". $2" >>tasks.txt
		echo "Task added: $line_num. $2"

	elif [ "$1" == "del" ]; then
		del_number=$2
		num=$(wc -l <tasks.txt)

		if [ "$del_number" -gt "$num" ]; then
			echo "Error: The number doesn't exist"
			exit 1
		else
			sed -i "${del_number}d" tasks.txt
			echo "Deleted task number $del_number"
		fi
	fi

elif [ "$1" == "list" ]; then
	cat -n tasks.txt

else
	#usage message
	echo -e "Usage: \nTo add a Task: $0 add \"task\"  \nTo list tasks: $0 list \nTo delete a task: $0 del task_number"
fi
