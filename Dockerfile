FROM jetbrains/teamcity-agent:2021.2.2-linux-sudo

USER root

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y openjdk-8-jdk-headless openjdk-17-jdk-headless
# RUN update-java-alternatives --set openjdk-17-jdk-headless

RUN apt-get install npm -y
RUN npm install -g n
RUN n latest
RUN apt-get remove -y npm nodejs
RUN apt-get autoremove -y
ENV DOCKER_IN_DOKCER=start
