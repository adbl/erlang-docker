FROM ubuntu:12.04

# oracle-jdk7-installer (ppa:webupd8team/java)
RUN echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu precise main" >> /etc/apt/sources.list && echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu precise main" >> /etc/apt/sources.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886
RUN echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections

RUN apt-get update
RUN apt-get install -y oracle-jdk7-installer build-essential libncurses5-dev openssl libssl-dev m4
ADD http://packages.erlang-solutions.com/erlang/esl-erlang-src/otp_src_R16B03-1.tar.gz /tmp
RUN tar zxf otp_src_R16B03-1.tar.gz
WORKDIR /tmp/otp_src_R16B03
RUN ./configure --enable-hipe
RUN make
RUN make install
RUN rm -rf /tmp/otp_src*
RUN apt-get clean
