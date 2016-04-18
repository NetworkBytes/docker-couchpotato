# Couchpotato # 
# Version 1.0 
FROM centos:latest 
MAINTAINER John Bencic

VOLUME /drop
VOLUME /config
VOLUME /movies

RUN    yum update -y \
    && yum install -y epel-release \
    && yum install -y python-devel python-lxml python-pip git gcc libffi libffi-devel openssl-devel \
    && pip install pyopenssl \
    && yum clean all \
    && git clone https://github.com/CouchPotato/CouchPotatoServer.git /CouchPotatoServer 


EXPOSE 5050

ENTRYPOINT ["python"]
CMD ["/CouchPotatoServer/CouchPotato.py", "--data_dir", "/config", "--console_log"]

