FROM ubuntu:trusty

RUN apt-get update

RUN apt-get install -y software-properties-common \
    && apt-add-repository ppa:yandex-qatools/allure-framework \
    && apt-get update \
    && apt-get install -y allure-commandline \
    && rm -rf /var/lib/apt/lists/*

CMD allure help