FROM centos:hadoop
ADD hbase-1.2.6-bin.tar.gz /usr/local/
ADD zookeeper-3.4.6.tar.gz /usr/local/
RUN mv /usr/local/hbase-1.2.6 /usr/local/hbase
RUN mv /usr/local/zookeeper-3.4.6 /usr/local/zookeeper

ENV HBASE_HOME /usr/local/hbase
ENV PATH $HBASE_HOME/bin:$PATH


RUN echo 'HBASE_HOME=/usr/local/hbase' >> /etc/profile
RUN echo 'PATH=$HBASE_HOME/bin:$PATH' >> /etc/profile
RUN echo 'export HBASE_HOME PATH' >> /etc/profile
