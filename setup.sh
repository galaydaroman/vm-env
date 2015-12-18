# upgrade distributuve
sudo apt-get update
sudo apt-get upgrade

# Copy .ssh backup and other rc files
cp -r /vagrant/backup/.ssh ~
cp /vagrant/backup/.gitignore ~
cp /vagrant/backup/.gitconfig ~
cp /vagrant/backup/.toprc ~
cp /vagrant/backup/.rvmrc ~
cp /vagrant/backup/.zshrc ~

# Setup locales
export LANGUAGE="en_US.UTF-8"
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# Install packages
sudo apt-get install curl build-essential openssl libreadline6 libreadline6-dev git-core zlib1g zlib1g-dev libssl-dev libyaml-dev \
  libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev autoconf libc6-dev libncurses5-dev automake libtool bison subversion \
  libmysqlclient-dev libpq-dev postgresql-client-common rmagic redis-server imagemagick


# RVM
curl -L https://get.rvm.io | bash -s stable
rvm install 2.1.2

# Paste to the end of .bashrc
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # This loads RVM into a shell

# Chack rvm as function
type rvm | head -n 1

### QT5 (webkit server)
# setup before bundler run
sudo apt-get purge libqt4-dev libqtwebkit4
sudo apt-get install libqt5webkit5 libqt5webkit5-dev
# add to .bashrc and .zshrc
export QT_SELECT=qt5-x86_64-linux-gnu

# Zsh
sudo apt-get install zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
chsh /bin/zsh

# HEADLESS requirements
# xvfb must be a service
sudo apt-get install xvfb firefox
export DISPLAY=:99

# maybe not needed if using gem headless
# sudo apt-get install xorg xfonts-100dpi xfonts-75dpi xfonts-scalable xfonts-cyrillic

### FUSE REQUIREMENTS ###
sudo apt-get install libgtk2.0-0 libgtkmm-2.4-1 libnotify-bin memcached

sudo apt-get install gstreamer1.0-plugins-base gstreamer1.0-tools gstreamer1.0-x \
  libfontconfig1-dev libfreetype6-dev libx11-dev libxcursor-dev libxext-dev libxfixes-dev \
  libxft-dev libxi-dev libxrandr-dev libxrender-dev

### FFMPEG for video capturing
sudo add-apt-repository ppa:mc3man/trusty-media
sudo apt-get install ffmpeg
