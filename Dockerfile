FROM amazon/aws-cli:latest

RUN yum update -y && \
    yum install -y jq git tar gzip

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]