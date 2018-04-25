#
# SequoiaDB Dockerfile
#
# https://github.com/sdb1/sequoiadb
#

# Pull base image.
FROM ubuntu:latest

MAINTAINER sdb1  dihao@sequoiadb.com


# SequoiaDB version.
ENV SDB_PKG_VERSION 2.8.5

# Get Sequoiadb Docker Package from sequoiadb
# wget http://p7qeo49zj.bkt.clouddn.com/sequoiadb_docker_2.8.5.tar.gz


ADD sequoiadb_docker_$SDB_PKG_VERSION.tar.gz /

# Config SequoiadbDB.


# Define mountable directories.
VOLUME ["/data"]

# Define working directory.
WORKDIR /home/sdbadmin

# Define default command.
#CMD ["/opt/sequoiadb/bin/sdbcmart"]

# Expose ports.
#   - 11790: sdbcm process
#   - 11810: sequoiadb standalone database
EXPOSE 11790
EXPOSE 11810
