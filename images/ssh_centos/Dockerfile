# 选择一个已有的os镜像作为基础  
FROM centos:7.2.1511

# 镜像的作者  
MAINTAINER li 

# 安装openssh-server和sudo软件包，并且将sshd的UsePAM UseDNS参数设置成no  
RUN yum install -y openssh-server sudo  
RUN sed -i '/UsePAM yes/c UsePAM no' /etc/ssh/sshd_config  
RUN sed -i '/UseDNS yes/c UseDNS no' /etc/ssh/sshd_config
#安装openssh-clients
RUN yum install -y openssh-clients
RUN yum install -y net-tools.x86_64
RUN yum install -y vim-enhanced
RUN yum install -y sudo passwd
RUN yum install -y wget

# 添加测试用户root，密码root，并且将此用户添加到sudoers里  
RUN echo "root:labssh" | chpasswd  
RUN echo "root   ALL=(ALL)       ALL" >> /etc/sudoers  
#创建SSH密钥 
RUN ssh-keygen -t rsa -f /root/.ssh/id_rsa
RUN cat /root/.ssh/id_rsa.pub >> /root/.ssh/authorized_keys

ADD id_rsa.pub /root/.ssh/master_id_rsa.pub
RUN cat /root/.ssh/master_id_rsa.pub >> /root/.ssh/authorized_keys
RUN rm -rf /root/.ssh/master_id_rsa.pub

CMD ["/usr/sbin/init"]
