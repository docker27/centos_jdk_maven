docker rm -f centos_jdk_maven
docker rmi qianchun27/centos-jdk-maven:7.8.3
docker build -t qianchun27/centos-jdk-maven:7.8.3 -f Dockerfile .
#docker run --privileged -t -d --name centos_jdk_maven qianchun27/centos-jdk-maven:7.8.3 /usr/sbin/init;
#docker exec -it centos_jdk_maven /bin/bash
