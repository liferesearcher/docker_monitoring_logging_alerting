FROM ubuntu:16.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y && apt-get upgrade -y && apt-get install apt-utils -y && apt-get install git -y && apt-get install sudo -y && apt-get install tzdata -y

RUN apt-get install build-essential -y && apt-get install libssl-dev -y

RUN apt-get install wget -y && apt-get install curl -y && apt-get install xz-utils -y && apt-get install nano -y

RUN apt-get install python-setuptools -y && apt-get install python3-dev -y && apt-get install python-pip -y && apt-get install virtualenv -y && apt-get install libffi-dev -y && apt-get install libbz2-dev -y && apt-get install libbz2-1.0 -y && apt-get install python3-bz2file -y

RUN apt-get install mariadb-server -y && apt-get install libmysqlclient-dev -y

RUN curl -O https://www.python.org/ftp/python/3.5.2/Python-3.5.2.tar.xz && unxz Python-3.5.2.tar.xz && tar -xvf Python-3.5.2.tar && cd Python-3.5.2 && ./configure && make && make install

# only needs for opanel
RUN apt-get install libmagickwand-dev -y

RUN curl -sL https://deb.nodesource.com/setup_10.x | sudo bash -
RUN apt-get install -y nodejs
RUN npm install -g typescript@3.1.6
RUN npm install -g @angular/cli@7.1.0
