Create a Debian/Ubuntu .deb package from the MySQL Enterprise Backup tarball

Requirements
============

* MySQL Enterprise Backup tarball
  * [eDelivery](https://edelivery.oracle.com)
  * [MyOracle Support](https://support.oracle.com)
* make
* [fpm](https://github.com/jordansissel/fpm)

Usage
=====

Copy the tarball to the meb-deb directory and run `make`. If you've
downloaded a Vxxxxx-xx.zip file then you should extract the zip.

Package layout
==============

The files are installed under /opt/mysql (e.g. /opt/mysql/meb-3.11.1-ubuntu12.04-x86-64bit/bin/mysqlbackup)

This is to allow multiple versions to be installed on the same machine,
wich can be needed to restore old backups.

The after-install script uses update-alternatives to create /usr/bin/mysqlbackup
