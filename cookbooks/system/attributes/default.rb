normal[:system][:user] = 'vagrant'
default[:system][:lang] = 'en_US.UTF-8'
default[:system][:packages] = {
  libs: %w(
    libtool
    libreadline6
    libreadline6-dev
    libssl-dev
    libyaml-dev
    libxml2-dev
    libxslt1-dev
    libc6-dev
    libncurses5-dev
    zlib1g
    zlib1g-dev
    autoconf
    automake),

  tools: %w(
    curl
    wget
    build-essential
    bison
    openssl
    tar
    gzip
    htop
    git-core
    screen
    rsync
    firefox
    vim
    zsh
    redis-server
    rmagic
    imagemagick),

  database: %w(
    libsqlite3-dev
    sqlite3
    libmysqlclient-dev
    libpq-dev
    postgresql-client-common)
}
