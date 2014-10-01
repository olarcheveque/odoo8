#!/usr/bin/env bash
 
echo ">>> Starting Install Script"
 
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
dpkg-reconfigure locales

# Add openerp repository
echo "deb http://nightly.openerp.com/8.0/nightly/deb/ ./" | sudo tee -a /etc/apt/sources.list

# update the sources list
apt-get update

# Install odoo
apt-get -y --force-yes install odoo

# Service setup and start now
update-rc.d odoo defaults
service odoo start

echo ">>> Complete Install Script"
