#
# SequoiaDB Dockerfile
#
# https://github.com/sdb1/sequoiadb
#

# Pull base image.
FROM ubuntu:latest

LABEL maintainer="dihao@sequoiadb.com"
LABEL website="http://www.sequoiadb.com"
LABEL description="This sequoiadb docker build file"

# SequoiaDB version.
ARG SDB_PKG_VER 2.8.5
ENV SDB_USER sdbadmin

# Get Sequoiadb Docker Package from local.
# wget http://p7qeo49zj.bkt.clouddn.com/sequoiadb_docker_2.8.5.tar.gz
ONBUILD ADD sequoiadb_docker_$SDB_PKG_VER.tar.gz /

# Get Sequoiadb Docker Package from remote.
# ONBUILD ADD http://p7qeo49zj.bkt.clouddn.com/sequoiadb_docker_$SDB_PKG_VER.tar.gz /


# Config SequoiadbDB.

# Define mountable directories.
VOLUME ["/data"]
VOLUME ["/logs"]

# Expose ports.
#   - 11790: sdbcm process
#   - 11810: sequoiadb standalone database
EXPOSE 11790
EXPOSE 11810

# Config SequoiadbDB User.
USER $SDB_USER


# Define working directory.
WORKDIR /home/$SDB_USER

# Define default command.
ENTRYPOINT ["/opt/sequoiadb/bin/sdbcmart"]


