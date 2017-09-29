FROM centos:jdk
ADD hadoop-2.7.1.tar.gz /usr/local
RUN mv /usr/local/hadoop-2.7.1 /usr/local/hadoop
ENV HADOOP_HOME /usr/local/hadoop
ENV PATH $HADOOP_HOME/bin:$PATH

RUN echo 'HADOOP_HOME=/usr/local/hadoop' >> /etc/profile
RUN echo 'PATH=$HADOOP_HOME/bin:$PATH' >> /etc/profile
RUN echo 'export HADOOP_HOME PATH' >> /etc/profile 
