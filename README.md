## VM-ENV
Load and setup Virtual Machine for RoR environment.
Dist: Ubuntu 14.04 (dev)

### Preinstall
Databases: Redis, PostgresSQL, SQLite
Cached system: Memcached
Ruby env: nodejs, npm,
Packages: Qt4, Qt5, Libreoffice, java 7

### Setup stages

* System dependencies packages, load predefined user configs (my configs)
* Xvfb
* RVM with Ruby environment
* Project setup

### Note (before start)

In case of security use your own ssh keys, before deploy you should copy them to cookbook folder

    ./cookbooks/system/files/ssh/default/

or VM setup will failed in case of use github repositories fetches.
To simplify your life you can just use command (in Win systems):

    cd ./cookbooks/system/files/default
    ln -s ~/.ssh ssh
