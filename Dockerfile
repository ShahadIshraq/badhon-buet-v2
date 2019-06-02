FROM ubuntu:18.04

ARG PACKAGE=badhan

# Run updates and essential installations
RUN apt-get -y update -qq
RUN apt-get -y install libxml2-dev libxslt1-dev python3-dev locales --allow-unauthenticated

# install python 3 and ensure setuptools
RUN apt-get -y install python3
RUN apt-get -y install python3-pip
RUN pip3 install setuptools==41.0.1

# Install packages
COPY ./server/requirements.txt /tmp/
RUN cd /tmp && pip3 install -r requirements.txt
RUN rm -rf /tmp/*

#install nodejs
RUN apt-get -y install curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt -y install nodejs
 

ADD ./client/package.json /code/client/
RUN cd /code/client && npm install

ADD ./ /code/

WORKDIR /code

ENTRYPOINT ["./docker/runner.sh"]