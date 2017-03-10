FROM centos/systemd
RUN yum -y -q upgrade
RUN yum -y -q install epel-release
RUN yum -y -q install initscripts
RUN yum -y -q install ack vim
COPY ep.sh /ep.sh
RUN chmod a+x /ep.sh
ADD file-exchange /mnt
CMD /ep.sh
