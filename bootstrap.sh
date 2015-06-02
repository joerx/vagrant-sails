echo -e "\e[0;36m[Upgrading system]\e[0m"
apt-get -qq update
apt-get -yqq upgrade

if [ ! -f /usr/bin/curl ]; then
  echo -e "\e[0;36m[Installing curl]\e[0m"
  apt-get -yqq install curl
fi

if [ ! -f /usr/bin/git ]; then
  echo -e "\e[0;36m[Installing git]\e[0m"
  apt-get -yqq install git-core
fi

if [ ! -f /usr/bin/node ]; then
  echo -e "\e[0;36m[Installing node]\e[0m"
  curl -sL https://deb.nodesource.com/setup_0.12 | bash -
  apt-get -y install nodejs
fi

if [ ! -f /usr/bin/mysql ]; then
  echo -e "\e[0;36m[Installing mysql]\e[0m"
  echo 'MySQL superuser password is "root"'
  debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
  debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'
  apt-get -yqq install mysql-server
fi

if [ ! -f /usr/bin/grunt ]; then
  echo -e "\e[0;36m[Installing grunt]\e[0m"
  npm -g --silent install grunt-cli
fi

if [ ! -f /usr/bin/sails ]; then
  echo -e "\e[0;36m[Installing sails]\e[0m"
  npm -g --silent install sails
fi

if [ ! -f /usr/bin/bower ]; then
  echo -e "\e[0;36m[Installing bower]\e[0m"
  npm -g --silent install bower
fi
