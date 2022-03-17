#-John Burns, create on June 06,2020
#-Feel free to use, but leave this info to credit the scripter.

#!/bin/sh

today=`date +%m-%d-%Y_%H:%M`

#--TO SEND THE SERVER OUTPUT TO A TEXT FILE FOR EDITING OR ERROR CORRECTING.
mono ServUO.exe > 0-output-server_$today.txt
