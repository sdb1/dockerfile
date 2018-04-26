#
# SequoiaDB Dockerfile
#
# https://github.com/sdb1/sequoiadb
#

# Pull base image.
FROM sequoiadb:base

LABEL maintainer="dihao@sequoiadb.com" website="http://www.sequoiadb.com" description="This sequoiadb docker build file"

# SequoiaDB version.Now sequoiadb support version is "2.8.5".
ARG SDB_PKG_VER=2.8.5
ARG SDB_USER=sdbadmin

# Get Sequoiadb Docker Package from local.
# wget http://p7qeo49zj.bkt.clouddn.com/sequoiadb_docker_2.8.5-server.tar.gz 
ADD sequoiadb_docker_$SDB_PKG_VER-server.tar.gz /

# Get Sequoiadb Docker Package from remote.
# ADD http://p7qeo49zj.bkt.clouddn.com/sequoiadb_docker_$SDB_PKG_VER-server.tar.gz /

# Define mountable directories.
VOLUME ["/data"]
VOLUME ["/logs"]

# Expose ports.
#   - 11790: sdbcm process
#   - 11810: sequoiadb standalone database
EXPOSE 11790
EXPOSE 11810

# Config SequoiadbDB.

# Start SequoiaDB Cluster Manager.
CMD ["/opt/sequoiadb/sequoiadb","daemon"]

# Config SequoiadbDB User.
USER $SDB_USER

# Define working directory.
WORKDIR /home/$SDB_USER

# Define default command.
#CMD ["/opt/sequoiadb/bin/sdb"]
#CMD ["tail -f /opt/sequoiadb/conf/log/sdbcm.log"]
