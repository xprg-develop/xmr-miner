FROM centos:7

ENV LANG C.UTF-8
ENV XMRIG_VERSION 6.12.1
ENV XMR_POOL_URL pool.supportxmr.com:443
ENV XMR_USER 48HiMEtx7ecBeXQeQq6hDJB8w5U79t8Hy24dnj29gBh99Vvcg8mQtfVaxDYr9CmpkaCTQCrExEfhRitFgcrq5mus394HHhx
ENV XMR_PASS xmr-doc

RUN rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 && yum -y update
RUN yum clean all

RUN mkdir -p /srv/archive
WORKDIR /srv/archive
COPY run /srv/

RUN curl -L -sS -O https://github.com/xmrig/xmrig/releases/download/v${XMRIG_VERSION}/xmrig-${XMRIG_VERSION}-linux-x64.tar.gz \
  && tar -zxvf xmrig-${XMRIG_VERSION}-linux-x64.tar.gz \
  && rm -f xmrig-${XMRIG_VERSION}-linux-x64.tar.gz

RUN ln -s /srv/archive/xmrig-${XMRIG_VERSION}/xmrig /srv/

CMD ["/bin/sh","/srv/run"]
