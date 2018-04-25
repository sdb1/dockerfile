# dockerfile

sequoiadb dockerfile for build docker image


# 使用说明：


# 1. 创建目录 sdbimage
> $ mkdir sdbimage


# 2. 下载Dockerfile
> $ cd sdbimage

> $ git clone https://github.com/sdb1/dockerfile


# 3. 下载sequoiadb的2.8.5版本的docker安装包
> $ cd sdbimage

> $ wget http://p7qeo49zj.bkt.clouddn.com/sequoiadb_docker_2.8.5.tar.gz


# 4. 创建sequoiadb的镜像
> $ docker build sdbimage -t sequoiadb:2.8.5


# 5. 启动sequoiadb的容器
> $ docker run -it sequoiadb:2.8.5


# 6. 创建sequoiadb standalone的服务
> $
