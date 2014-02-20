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
DAYS1="2";
DAYS2="5";

#########################################################################
# DONT EDIT BELOW THIS LINE!!! Broken Server is the reason !!!          #
#########################################################################


#	Find old logs and remove them
find -type f -name 'UT2004crash_*.log' -mtime +${DAYS1} -print | xargs /bin/rm -f;
find -type f -name 'UT2004_*.ini' -mtime +${DAYS2} -print | xargs /bin/rm -f;

#	copy UT2004.ini for interna backup
cp UT2004.ini UT2004_$STAMP.ini

#	Copy the Server.log to the UT2004_old.log for better Fail-Reports and continuous restarts
cp UT2004.log UT2004crash_$STAMP.log

#	Start the UT-Server with all comands behind ucc-bin
./ucc-bin $@