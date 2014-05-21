FROM octohost/ubuntu:13.10

MAINTAINER Darron Froese "darron@froese.org"

RUN apt-get update && apt-get -y install python-software-properties
RUN apt-get install -y apache2
RUN a2enmod rewrite
RUN a2enmod expires
RUN a2enmod headers

ADD ./apache2.conf /etc/apache2/apache2.conf
ADD ./default.conf /etc/apache2/sites-available/000-default.conf
ADD ./security.conf /etc/apache2/conf-available/security.conf
ADD ./start.sh /start.sh
RUN chmod 755 /start.sh
