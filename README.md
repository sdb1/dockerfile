## dockerfile

sequoiadb dockerfile for build docker image


## 使用说明：


##### 1. 下载Dockerfile
> $ git clone https://github.com/sdb1/dockerfile


##### 2.  进入工作目录 dockerfile
> $ cd dockerfile


##### 3. 下载sequoiadb的2.8.5版本的docker安装包
> $ wget -o sdb_image/sequoiadb_docker_2.8.5.tar.gz http://p7qeo49zj.bkt.clouddn.com/sequoiadb_docker_2.8.5.tar.gz


##### 4. 创建sequoiadb base的镜像
> $ docker build sdb_base -t sequoiadb:base


##### 5. 创建sequoiadb base的镜像
> $ docker build sdb_image -t sequoiadb:2.8.5


##### 6. 用服务的方式启动sequoiadb的容器
> $ docker run -d sequoiadb:2.8.5


##### 6. 创建sequoiadb standalone的服务(手动交互方式使用sequoiadb docker)
> $ docker run -it sequoiadb:2.8.5 /bin/bash

> sdbadmin@491ada92f91f:~ $ /opt/sequoiadb/sequoiadb start

> sdbadmin@491ada92f91f:~ $ /opt/sequoiadb/bin/sdb

