#
# SequoiaDB Dockerfile
#
# https://github.com/sdb1/sequoiadb
#

# Pull base image.
FROM debian:stable

LABEL maintainer="dihao@sequoiadb.com" description="This sequoiadb docker base image build file"

# SequoiaDB User and Group for Image
ARG SDB_USER=sdbadmin
ARG SDB_GROUP=sdbadmin_group

#curl -sSL -o gosu "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)"
COPY gosu /usr/local/bin/gosu

RUN chmod +x /usr/local/bin/gosu \
  && groupadd -g 1000 $SDB_GROUP \
  && useradd -u 1000 -g $SDB_GROUP -m -s /bin/bash -p $SDB_USER $SDB_USER 
