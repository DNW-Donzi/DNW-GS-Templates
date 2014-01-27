#!/bin/bash
###########################################################
#                                                         #
#       =========================================         #
#       |       DNW Despe Networks              |         #
#       =========================================         #
#       |>>>>> UT-Server-Wrapper for Easy-Wi >>>|         #
#       |>>>>> http://www.despe.de >>>>>>>>>>>>>|         #
#       |>>>>> DO NOT EDIT, only if u know >>>>>|         #
#       |>>>>> what are you doing! >>>>>>>>>>>>>|         #
#       =========================================         #
#                                                         #
###########################################################

#	Timestamp for the Crash or Restart Logs
STAMP=`date +%d-%m-%Y_%H%M%S`

#	Remove old logs after x Days
DAYS="2";

#########################################################################
# DONT EDIT BELOW THIS LINE!!! Broken Server is the reason !!!          #
#########################################################################


#	Find old logs and remove them
find -type f -name 'crash_*.log' -mtime +${DAYS} -print | xargs /bin/rm -f;

#	Start the UT-Server with all comands behind ucc-bin
./ucc-bin $@

#	Copy the Server.log to the Crash-Date.Log for better Fail-Reports and continuous restarts
cp KF_Server.log crash_$STAMP.log
