#!/system/xbin/bash

MODE=`getprop debug.rilswitch`

SEC_PATH=/system/rilswitch/sec/
CAF_PATH=/system/rilswitch/caf/

RILD_PATH=bin/rild
REF_RIL_PATH=lib/libreference-ril.so
LIBRIL_PATH=lib/libril.so
LIBRILUTIL_PATH=lib/librilutils.so
SECRIL_C_PATH=lib/libsecril-client.so

#remount the system
mount -o remount,rw /system

#make the directories if they don't already exist
mkdir -p $CAF_PATH


if [ $MODE == "sec" ]; then
    #make directories
    mkdir -p $CAF_PATH/lib
    mkdir -p $CAF_PATH/bin
    #backup the caf files
    cp -p /system/$RILD_PATH $CAF_PATH/$RILD_PATH
    cp -p /system/$REF_RIL_PATH $CAF_PATH/$REF_RIL_PATH
    cp -p /system/$LIBRIL_PATH $CAF_PATH/$LIBRIL_PATH
    cp -p /system/$LIBRILUTIL_PATH $CAF_PATH/$LIBRILUTIL_PATH
    cp -p /system/$SECRIL_C_PATH $CAF_PATH/$SECRIL_C_PATH
    
    #kill rild
    kill `pidof rild`
    mv /system/$RILD_PATH /system/$RILD_PATH.old
    cp $SEC_PATH/$RILD_PATH /system/$RILD_PATH
    cp $SEC_PATH/$REF_RIL_PATH /system/$REF_RIL_PATH
    cp $SEC_PATH/$LIBRIL_PATH /system/$LIBRIL_PATH
    cp $SEC_PATH/$LIBRILUTIL_PATH /system/$LIBRILUTIL_PATH
    cp $SEC_PATH/$SECRIL_C_PATH /system/$SECRIL_C_PATH
    rm /system/$RILD_PATH.old
    #check if we copied successfully
    if [ $? != 0 ]; then
        #kill rild again for good measure
        kill `pidof rild`
        #copy again
        mv /system/$RILD_PATH /system/$RILD_PATH.old
        cp $SEC_PATH/$RILD_PATH /system/$RILD_PATH
        rm /system/$RILD_PATH.old
    fi
fi
if [ $MODE == "caf" ]; then
        #kill rild
    kill `pidof rild`
    mv /system/$RILD_PATH /system/$RILD_PATH.old
    cp $CAF_PATH/$RILD_PATH /system/$RILD_PATH
    cp $CAF_PATH/$REF_RIL_PATH /system/$REF_RIL_PATH
    cp $CAF_PATH/$LIBRIL_PATH /system/$LIBRIL_PATH
    cp $CAF_PATH/$LIBRILUTIL_PATH /system/$LIBRILUTIL_PATH
    cp $CAF_PATH/$SECRIL_C_PATH /system/$SECRIL_C_PATH
    rm /system/$RILD_PATH.old
            
    #check if we copied successfully
    if [ $? != 0 ]; then
        #kill rild again for good measure
        kill `pidof rild`
        #copy again
        mv /system/$RILD_PATH /system/$RILD_PATH.old
        cp $CAF_PATH/$RILD_PATH /system/$RILD_PATH
        rm /system/$RILD_PATH.old
    fi
fi
#set permissions
chmod 0655 /system/$RILD_PATH
chmod 0644 /system/$REF_RIL_PATH
chmod 0644 /system/$LIBRIL_PATH
chmod 0644 /system/$LIBRILUTIL_PATH
chmod 0644 /system/$SECRIL_C_PATH

#unset the property
setprop debug.rilswitch none

#remount the system
mount -o remount,ro /system







