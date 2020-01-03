FROM jenkins/jenkins
EXPOSE 8080/tcp
EXPOSE 50000/tcp
USER root
RUN apt -y update
RUN apt -y install python3-pip
RUN pip3 install ansible
RUN pip3 install awscli
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl
RUN mv ./kubectl /usr/local/bin
RUN apt -y install vim curl wget
USER jenkins