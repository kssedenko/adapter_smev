#!/bin/bash

. .././env.sh

echo "************************************************************"
echo "*********** Adapter downloading and installation ***********"
echo "************************************************************"

mkdir $ADAPTER_DISTRIBUTION
cd $ADAPTER_DISTRIBUTION

if [[ ! -f ./$ADAPTER_FILE_NAME ]]
then
wget --backups=0 $ADAPTER_FTP_URL
fi

chmod +x $ADAPTER_DISTRIBUTION/$ADAPTER_FILE_NAME

./$ADAPTER_FILE_NAME $JAVA_PATH

echo "######### Adapter installed. Please run it ./adapter.sh start and verify in browser that all ok.  #############3"
