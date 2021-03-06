#!/bin/bash
set -e

INSTALL_LOC=/etc/dnsmasq-china-list
source $INSTALL_LOC/conflist.sh

CONF_DIR=/etc/dnsmasq-china-list/template/

echo "Downloading latest configurations..."
for _conf in "${CONF_WITH_SERVERS[@]}"; do
        wget https://raw.githubusercontent.com/felixonmars/dnsmasq-china-list/master/$_conf.conf  -O $CONF_DIR$_conf.conf
done
for _conf in "${CONF_SIMPLE[@]}"; do
        wget https://raw.githubusercontent.com/felixonmars/dnsmasq-china-list/master/$_conf.conf  -O $CONF_DIR$_conf.conf
done

echo "Download finished. All conf saved to "$CONF_DIR"."