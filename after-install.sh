#!/bin/sh
mebpath=$(ls -tr /opt/mysql/meb*/bin/mysqlbackup | tail -1)
if [ -x ${mebpath} ]; then
  update-alternatives --install /usr/bin/mysqlbackup mysqlbackup ${mebpath} 50
fi
