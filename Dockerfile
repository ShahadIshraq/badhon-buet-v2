From ubuntu:18.04

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

ADD ./ /code/
RUN rm -rf /tmp/*

WORKDIR /code

ENTRYPOINT ["./docker/runner.sh"]