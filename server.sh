#-John Burns, create on June 06,2020
#-Feel free to use, but leave this info to credit the scripter.

#!/bin/bash

until mono ./ServUO.exe;

do
	pkill -9 -f ServUO
	echo "Killing and Restarting the server"
	echo ""
	echo ""
done