FROM ubuntu:latest

RUN apt-get update && apt-get install -y nginx zip curl

RUN curl -o /var/www/html/master.zip -L https://github.com/gabrielecirulli/2048/archive/refs/heads/master.zip
RUN cd /var/www/html/ && unzip master.zip && mv 2048-master/* . && rm -rf 2048-master master.zip
RUN chown -R www-data:www-data /var/www/html

EXPOSE 80

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]