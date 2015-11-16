#   Copyright 2015 eBusiness Information
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

FROM debian:jessie

MAINTAINER Jones Magloire <jmagloire@ebusinessinformation.fr>
MAINTAINER Loic Ortola <lortola@ebusinessinformation.fr>

ENV MAPNIK_VERSION v3.0.7

RUN apt-get update \
    && apt-get install -y \
        build-essential libfreetype6 libfreetype6-dev \
        icu-devtools libicu-dev libharfbuzz-dev \
        libboost-dev libboost-filesystem-dev \
        libboost-regex-dev libboost-thread-dev \
        libboost-system-dev libboost-program-options-dev \
        git python \
    && git clone https://github.com/mapnik/mapnik.git \
    && cd mapnik \
    && git checkout $MAPNIK_VERSION \
    && git submodule update --init \
    && ./configure \
    && make \
    && make install \
    && cd - \
    && rm -r mapnik \
    && apt-get purge -y git build-essential \
    && apt-get autoremove -y \
    && apt-get purge -y $(dpkg -l | grep ^rc | cut -d' ' -f 3) \
    && rm -rf /var/lib/apt/lists/*
