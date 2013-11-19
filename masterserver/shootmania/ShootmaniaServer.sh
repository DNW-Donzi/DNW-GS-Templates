#!/bin/bash
###########################################################
#                                                         #
#       =========================================         #
#       |       DNW Despe Networks              |         #
#       =========================================         #
#       |>>>>>>>> ManiaPlanet Startscript v3 >>>|         #
#       |>>>>>>>> http://www.despe.de >>>>>>>>>>|         #
#       |>>>>>>>> DO NOT EDIT, only if u know >>|         #
#       |>>>>>>>> what are you doing! >>>>>>>>>>|         #
#       =========================================         #
#                                                         #
###########################################################

#########################################################################
# DONT EDIT BELOW THIS LINE!!! Broken Server is the reason !!!          #
#########################################################################


GAMESETTINGS=$1
DEDICFG=$2
TITLE=$3
DAEMON=$4
SMART=$5

# Start ManiaPlanet-Server for TrackMania or ShootMania and start a ServerController ( TM= xaseco or SM= smart)


if [ "$5" = "/mpaseco" ]
		then
			./MPAseco.sh restart & ./ManiaPlanetServer $1 $2 $3 $4 $6 $7

	elif [ "$5" != "/mpaseco" ]
		then
			./ManiaPlanetServer $1 $2 $3 $4 $5 $6
fi
