#!/bin/sh

set -e
set -x

if [ $(grep -ci $CUPS_USER /etc/shadow) -eq 0 ]; then
     useradd $CUPS_USER --system -G root,lpadmin --no-create-home --password $(mkpasswd $CUPS_PASS)
fi

exec /usr/sbin/cupsd -f
