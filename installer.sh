#!/bin/bash
######################################################################################
## Command=wget https://raw.githubusercontent.com/emil237/alternativesoftcammanager/main/installer.sh -O - | /bin/sh
##
###########################################
###########################################

# my config script #

MY_IPK_PY2="alternativesoftcammanager_all.ipk"
MY_TAR_PY3="AlternativeSoftCamManager_py3.tar.gz"

MY_URL="https://raw.githubusercontent.com/emil237/alternativesoftcammanager/main"

PYTHON_VERSION=$(python -c 'import sys; print(sys.version_info[0])')

######################################################################################
MY_EM='============================================================================================================'
#################################
    
###################
echo "============================================================================================================================"
 echo " DOWNLOAD AND INSTALL PLUGIN "

echo "   Install Plugin please wait "

cd /tmp 

set -e
    
  wait
     
if python --version 2>&1 | grep -q '^Python 3\.'; then
  wget "$MY_URL/$MY_TAR_PY3"
tar -xzf AlternativeSoftCamManager_py3.tar.gz -C /

rm -f AlternativeSoftCamManager_py3.tar.gz
	else 
echo "   Install Plugin please wait "
   wget "$MY_URL/$MY_IPK_PY2"
opkg install --force-overwrite $MY_IPK_PY2
	fi
echo "================================="
set +e
cd ..
wait
rm -f /tmp/$MY_IPK_PY2

	if [ $? -eq 0 ]; then
echo ">>>>  SUCCESSFULLY INSTALLED <<<<"
fi
		echo "********************************************************************************"
echo "   UPLOADED BY  >>>>   EMIL_NABIL " 
sleep 4;                         
echo $MY_EM
###################                                                                                                                  
echo " Your Device Will RESTART Now " 
echo "**********************************************************************************"
wait
init 4
init 3
exit 0





















