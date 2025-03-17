FROM ubuntu:22.04
RUN apt update -y && apt upgrade -y 

ENV DEBIAN_FRONTEND=noninteractive

## install net-tools
RUN apt install net-tools apt-utils systemctl openssh-server -y 
RUN apt install vim -y
RUN apt install ufw -y


## install python 
RUN apt install python3 python3-pip python3-venv -y
RUN ln -s /usr/bin/python3 /usr/bin/python


# Install JAVA
RUN apt install openjdk-17-jdk -y

# Set JAVA_HOME environment variable
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
ENV PATH="$JAVA_HOME/bin:$PATH"


## Install Jenkins 
RUN wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

RUN echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

RUN apt update -y

RUN apt install jenkins -y 

## Install Ansible 


