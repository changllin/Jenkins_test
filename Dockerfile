FROM centos

RUN yum install nginx -y
RUN yum install net-tools -y
RUN rm -f /usr/share/nginx/html/index.html
COPY ./index.html /usr/share/nginx/html/

EXPOSE 80 

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
