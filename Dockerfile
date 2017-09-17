FROM centos:7
MAINTAINER "harupu"
RUN yum -y update
RUN yum install -y epel-release; rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
RUN yum install -y --enablerepo=remi,remi-php56 php php-sqlite3
RUN yum install -y  wget httpd unzip
RUN wget https://github.com/flatCore/flatCore-CMS/archive/master.zip;
RUN unzip master.zip; mv ./flatCore-CMS-master /var/www/html/flatCore; chown -R apache:apache /var/www/html/flatCore
RUN systemctl enable httpd.service
EXPOSE 80
CMD ["/bin/bash"]
