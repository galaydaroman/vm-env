packages = %w(
  curl
  build-essential
  openssl
  libreadline6
  libreadline6-dev
  git-core
  zlib1g
  zlib1g-dev
  libssl-dev
  libyaml-dev
  libsqlite3-dev
  sqlite3
  libxml2-dev
  libxslt1-dev
  autoconf
  libc6-dev
  libncurses5-dev
  automake
  libtool
  bison
  subversion
  libmysqlclient-dev
  libpq-dev
  postgresql-client-common
  rmagic
  redis-server
  imagemagick
)

packages.each do |name|
  package name
end
