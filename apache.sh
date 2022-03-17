#!/bin/bash

# - - - - - - - - - - - - - - - - - - -
#StartHere.sh MetaPhaze
#Re-Done by J.Burns 12-2021
#Reason: To run linux packages
# - - - - - - - - - - - - - - - - - - -

# - - - - - - - - - - - - - - - - - - -
#You may set a special path to all of
#your packages here, or in the menu.
APACHE="sudo /etc/init.d/apache2 "
# - - - - - - - - - - - - - - - - - - -

#-- RETURN_TO_MENU() FUNCTION
RETURN_TO_MENU()
	{
	sleep 2
	MENU
	}

#-- MULTIS.CFG FUNCTION
APACHE-START()
	{
	"${APACHE}"start
	RETURN_TO_MENU
	}
	
#-- TILES.CFG FUNCTION
APACHE-STOP()
	{
	"${APACHE}"stop
	RETURN_TO_MENU
	}
	
#-- LANDTILES.CFG FUNCTION
APACHE-RESTART()
	{
	"${APACHE}"restart
	RETURN_TO_MENU
	}
	
#-- QUIT FUNCTION
QUIT()
	{
	clear
	exit 0
	}

#-- MENU FUNCTION
MENU()
	{
	clear
	echo " RealmGen.sh (v 1.0) by MetaPhaze"
	echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
	echo " Command        Purpose"
	echo "--------  -------------------------------------"
	echo " [ a ]  - Apache - Start"
	echo " [ b ]  - Apache - Stop"
	echo " [ c ]  - Apache - Restart"
	echo ""
	echo " [ x ]  - Back"

	read -n 1 -p "Command: " CMD

	if [  "${CMD}" == "a" ]
		then APACHE-START
		fi
	if [  "${CMD}" == "b" ]
		then APACHE-STOP
		fi
	if [  "${CMD}" == "c" ]
		then APACHE-RESTART
		fi
	if [ "${CMD}" == "x" ]
		then QUIT
		fi

	echo ""
	echo " Invalid command."
	RETURN_TO_MENU
	}

MENU
