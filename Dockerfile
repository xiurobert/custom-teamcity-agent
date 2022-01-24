FROM jetbrains/teamcity-agent:2021.2.2-linux-sudo

RUN apt update && apt upgrade -y

RUN apt install -y openjdk-8-jdk-headless openjdk-17-jdk-headless
RUN update-java-alternatives --set openjdk-17-jdk-headless

RUN apt install npm -y
RUN npm install -g n
RUN n latest
RUN apt remove -y npm nodejs
RUN apt autoremove -y
ENV DOCKER_IN_DOKCER=start
