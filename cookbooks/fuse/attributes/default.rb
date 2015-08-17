user = node[:system][:user]

default[:fuse][:path] = "/home/#{user}/projects/fusetube"
default[:fuse][:shared_path] = "/home/#{user}/fusetube"
default[:fuse][:qt_version] = 'qt5-x86_64-linux-gnu'
default[:fuse][:packages] = %w(
  libssl-dev
  libxml2-dev
  libxslt1-dev
  libqt4-dev libqtwebkit4
  libcurl4-openssl-dev
  libicu-dev
  libmagic-dev
  libqt5webkit5 libqt5webkit5-dev
  mysql-server
  nodejs nodejs-legacy
  npm
  imagemagick
  memcached
  openjdk-7-jre
  libmysqlclient-dev
  redis-server
  libreoffice
  libgtk2.0-0
  libgtkmm-2.4-1
  libnotify-bin
)
