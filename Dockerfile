FROM sapk/cloud9:latest
ENV TZ=Asia/Bangkok

RUN apt update \
    && apt install -y \
         autoconf \
         bison \
         build-essential \
         libssl-dev \
         libyaml-dev \
         libreadline6-dev \
         zlib1g-dev \
         libncurses5-dev \
         libffi-dev \
         libgdbm3 \
         libgdbm-dev \
         ruby \
         ruby-dev \
         sqlite3 \
         libsqlite3-dev \
         libxml2

RUN apt install -y \
         htop \
         git \
         curl \
         wget \
         vim

RUN printf "install: --no-rdoc --no-ri\nupdate:  --no-rdoc --no-ri\n" >> ~/.gemrc
RUN gem install rails -v 5.1.6
RUN gem install sqlite3
