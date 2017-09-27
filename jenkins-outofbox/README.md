# 开箱即用的 Jenkins

[![qinyu/jenkins/automated](https://img.shields.io/docker/automated/qinyu/jenkins.svg)](https://hub.docker.com/r/qinyu/jenkins/) [![qinyu/jenkins/build](https://img.shields.io/docker/build/qinyu/jenkins.svg)](https://hub.docker.com/r/qinyu/jenkins/) [![qinyu/jenkins/pulls](https://img.shields.io/docker/pulls/qinyu/jenkins.svg)](https://hub.docker.com/r/qinyu/jenkins/)

- 创建指定管理员帐号([security.groovy](https://github.com/qinyu/docker/blob/master/jenkins-outofbox/security.groovy)，需要`docker secret`设置，后面详述)
- [常用插件](https://github.com/qinyu/docker/blob/master/jenkins-outofbox/plugins.txt)已安装
- Docker 已安装
- jenkins 用户（Jenkins 默认启动用户）已加入 docker 用户组（只有设置 volume `/var/run/docker.sock` 的情况生效，见脚本[grant-jenkins-access-to-docker-socket.sh](https://github.com/qinyu/docker/blob/master/jenkins-outofbox/grant-jenkins-access-to-docker-socket.sh)）

**使用方法**：

1. 设置管理员帐号密码（下面例子用户名和秘码都是`admin`，可以自己调整）
```sh
echo "admin" | docker secret create jenkins-user -
echo "admin" | docker secret create jenkins-user -
```
2. 使用`docker stack`部署服务（配置见[jenkins.yml](https://github.com/qinyu/docker/blob/master/jenkins-outofbox/jenkins.yml)，如有必要可以修改 volume `/var/jenkins_home`的挂载路径）
```sh
docker stack deploy -c jenkins.yml jenkin
```
