#FROM centos:7
FROM squid-proxy:base
MAINTAINER “Paul Jauregui” <paul@cloudbacca.net>
ENV SQUID_VERSION=3.5 \
    SQUID_CACHE_DIR=/var/spool/squid \ 
    SQUID_LOG_DIR=/var/log/squid \
    SQUID_USER=squid

RUN yum -y update; yum clean all
RUN yum -y install squid perl-Crypt-OpenSSL-X509
RUN mv /etc/squid/squid.conf /etc/squid/squid.conf.orig
#RUN rm /etc/ssh/ssh_host_rsa_key
#RUN rm /etc/ssh/ssh_host_dsa_key
RUN chmod 1777 /tmp
COPY keys/id_rsa.pub /.ssh/id_rsa.pub
COPY conf/squid.conf.version1 /etc/squid/squid.conf
COPY startup.sh /sbin/startup.sh
RUN chmod 700 /sbin/startup.sh

EXPOSE 3128/tcp
VOLUME ["${SQUID_CACHE_DIR}"]
ENTRYPOINT ["/sbin/startup.sh"]
