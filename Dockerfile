FROM ubuntu:12.04

RUN cd /tmp
RUN apt-get install -y wget
RUN echo "deb http://packages.erlang-solutions.com/debian precise contrib" >> /etc/apt/sources.list
RUN wget http://packages.erlang-solutions.com/debian/erlang_solutions.asc
RUN apt-key add erlang_solutions.asc
RUN apt-get update
RUN apt-get install -y esl-erlang=1:15.b.3-2~ubuntu~precise