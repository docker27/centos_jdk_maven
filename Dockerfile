FROM centos:7
MAINTAINER qianchun, qianchun27@hotmail.com
LABEL version="7.8.3"
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

ENV BASE_INSTALL_DIR /opt/install

RUN mkdir -p ${BASE_INSTALL_DIR}

COPY jdk-8u131-linux-x64.rpm ${BASE_INSTALL_DIR}

COPY apache-maven-3.5.4-bin.tar.gz ${BASE_INSTALL_DIR}

COPY settings.xml ${BASE_INSTALL_DIR}

COPY java_env_var ${BASE_INSTALL_DIR}

COPY user.sh ${BASE_INSTALL_DIR}

COPY jdk.sh ${BASE_INSTALL_DIR}

COPY maven.sh ${BASE_INSTALL_DIR}

COPY install.sh ${BASE_INSTALL_DIR}

RUN cd ${BASE_INSTALL_DIR}; sh install.sh;


