FROM ubuntu:xenial
MAINTAINER Leonardo Loures <luvres@hotmail.com>

ENV USER="1777741" \
	CORES=4

RUN \
	cd \
	&& apt-get update \
	&& apt-get install -y wget libcurl4-openssl-dev \
	&& apt-get install -y build-essential libssl-dev \
	&& apt-get install -y autotools-dev autoconf \
	&& apt-get install -y libcurl3 libcurl4-gnutls-dev \
  \
	&& wget https://ufpr.dl.sourceforge.net/project/cpuminermulti-mod4compile/cpuminer-multi.tar.gz \
	&& tar zxf cpuminer-multi.tar.gz \
	&& cd cpuminer-multi \
  \
	&& ./autogen.sh \
	&& ./configure \
	&& make install

CMD minerd -a scrypt -o stratum+tcp://scrypt.eobot.com:4444 --userpass eobot.$USER:x -t $CORES



