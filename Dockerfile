FROM centos

RUN yum install nginx -y
RUN yum install net-tools -y

EXPOSE 80 

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
