FROM centos:ssh
ADD jdk-8u111-linux-x64.tar.gz /usr/local/
RUN mv /usr/local/jdk1.8.0_111 /usr/local/jdk1.8

ENV JAVA_HOME /usr/local/jdk1.8
ENV PATH $JAVA_HOME/bin:$PATH

RUN echo 'JAVA_HOME=/usr/local/jdk1.8' >> /etc/profile
RUN echo 'JRE_HOME=/usr/local/jdk1.8/jre' >> /etc/profile
RUN echo 'PATH=$JAVA_HOME/bin:$PATH' >> /etc/profile
RUN echo 'CLASS_PATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$JRE_HOME/lib' >> /etc/profile
RUN echo 'export JAVA_HOME PATH CLASS_PATH JRE_HOME' >> /etc/profile
