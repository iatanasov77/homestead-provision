#!/bin/sh

# If you would like to do some extra provisioning you may
# add any commands you wish to this file and they will
# be run after the Homestead machine is provisioned.
#
# If you have user-specific configurations you would like
# to apply, you may also create user-customizations.sh,
# which will be run after this script.

sudo apt install mc -y

# Install PhpMyAdmin
cd /home/vagrant/projects
curl -sS https://raw.githubusercontent.com/grrnikos/pma/master/pma.sh | sh
cd --

# Install PhpBrew
curl -L -O https://github.com/phpbrew/phpbrew/raw/master/phpbrew
chmod +x phpbrew
mv phpbrew /usr/local/bin/phpbrew
phpbrew init
# Now you can run `phpbrew known`
