FROM ubuntu:16.04

RUN apt-get update && apt-get -y upgrade

RUN apt-get install -y libx11-xcb1 libgtk2.0-0 libxtst6 libxss1 libgconf-2-4 libnss3 libasound2

RUN apt-get install -y wget
RUN wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz
RUN tar -xzf postman.tar.gz -C /opt
RUN rm postman.tar.gz
RUN ln -s /opt/Postman/Postman /usr/bin/postman

CMD [ "/usr/bin/postman" ]

