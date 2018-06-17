FROM ubuntu:16.04

RUN apt-get update
RUN apt-get upgrade -y 
RUN apt-get install -y texlive

ADD generate.sh /usr/bin/
RUN chmod +x /usr/bin/generate.sh

RUN mkdir -p /ouput
WORKDIR /output

ENTRYPOINT [ "/usr/bin/generate.sh" ]
