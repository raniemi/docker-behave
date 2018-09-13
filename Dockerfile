FROM python:3.6.6-alpine3.7

ARG VERSION

RUN mkdir -p /opt/behave

WORKDIR /opt/behave

RUN pip install --upgrade pip
RUN pip install behave==$VERSION
RUN pip install pyhamcrest
RUN pip install boto3
RUN pip install requests==2.18.4 

RUN mkdir -p /data
WORKDIR /data

RUN mkdir -p /root/.aws
VOLUME /root/.aws

CMD ["behave"]
