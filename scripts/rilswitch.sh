#!/system/xbin/bash

MODE=$1

RS_PATH=/system/rilswitch/

ROPT_PATH=bin/radiooptions
RILD_PATH=bin/rild
REF_RIL_PATH=lib/libreference-ril.so
LIBRIL_PATH=lib/libril.so
LIBRILUTIL_PATH=lib/librilutils.so

#remount the system
mount -o remount,rw /system

if [ -n $MODE ]; then
    #kill rild
    kill `pidof rild`
    mv /system/$RILD_PATH /system/$RILD_PATH.old
    cp $RS_PATH/$MODE/$ROPT_PATH /system/$ROPT_PATH 2>/dev/null
    cp $RS_PATH/$MODE/$RILD_PATH /system/$RILD_PATH
    cp $RS_PATH/$MODE/$REF_RIL_PATH /system/$REF_RIL_PATH
    cp $RS_PATH/$MODE/$LIBRIL_PATH /system/$LIBRIL_PATH
    cp $RS_PATH/$MODE/$LIBRILUTIL_PATH /system/$LIBRILUTIL_PATH
    rm /system/$RILD_PATH.old
    #check if we copied successfully
    if [ $? != 0 ]; then
        #kill rild again for good measure
        kill `pidof rild`
        #copy again
        mv /system/$RILD_PATH /system/$RILD_PATH.old
        cp $RS_PATH/$MODE/$RILD_PATH /system/$RILD_PATH
        rm /system/$RILD_PATH.old
    fi
fi

#set permissions
chmod 0655 /system/$RILD_PATH
chmod 0655 /system/$ROPT_PATH
chmod 0644 /system/$REF_RIL_PATH
chmod 0644 /system/$LIBRIL_PATH
chmod 0644 /system/$LIBRILUTIL_PATH
chmod 0644 /system/$SECRIL_C_PATH

#remount the system
mount -o remount,ro /system







