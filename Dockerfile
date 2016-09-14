FROM jenkins:2.7.3

USER root

# Setting up AWS CLI
RUN apt-get update
RUN apt-get install -y python
RUN curl -O https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py
RUN pip install awscli

USER jenkins

ENV AWS_DEFAULT_REGION ap-northeast-1
