user = node[:system][:user]

default[:project_name][:projects_path] = "/home/#{user}/projects"
default[:project_name][:path] = "/home/#{user}/projects/bfb"
default[:project_name][:shared_path] = "/home/#{user}/bfb"
default[:project_name][:qt_version] = 'qt5-x86_64-linux-gnu'
default[:project_name][:packages] = %w(
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

  gstreamer1.0-plugins-base
  gstreamer1.0-tools
  gstreamer1.0-x
)
