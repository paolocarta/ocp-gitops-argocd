FROM centos:7

# Set the locale(en_US.UTF-8)
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

ENV GIT_VERSION 2.22.0
ENV JQ_RELEASE_VERSION 1.5
ENV YQ_RELEASE_VERSION 2.4.1

RUN yum update  -y && \
    yum install -y epel-release && \
    yum install -y unzip \
                   which \
                   make \
                   wget \
                   zip \
                   bzip2 \
    # git
    yum install -y curl-devel expat-devel gettext-devel openssl-devel zlib-devel && \
    yum install -y gcc perl-ExtUtils-MakeMaker && \
    cd /usr/src  && \
    wget https://www.kernel.org/pub/software/scm/git/git-${GIT_VERSION}.tar.gz  && \
    tar xzf git-${GIT_VERSION}.tar.gz  && \
    cd git-${GIT_VERSION} && \
    make prefix=/usr/local/git all  && \
    make prefix=/usr/local/git install && \
    cd /usr/src && \
    rm -rf git-${GIT_VERSION}.tar.gz && \
    rm -rf git-${GIT_VERSION} && \
    yum -y groupinstall 'Development Tools' && \
    yum remove -y git && \
    # jq
    wget https://github.com/stedolan/jq/releases/download/jq-${JQ_RELEASE_VERSION}/jq-linux64 && mv jq-linux64 jq && chmod +x jq && mv jq /usr/bin/jq && \
    # yq
    wget https://github.com/mikefarah/yq/releases/download/${YQ_RELEASE_VERSION}/yq_linux_amd64 && mv yq_linux_amd64 yq && chmod +x yq && mv yq /usr/bin/yq && \
    yum clean all

ENV PATH /usr/local/git/bin:$PATH

ENV HELM3_VERSION 3.0.3
ENV JX_RELEASE_VERSION 1.0.24

# helm3
RUN curl -L https://get.helm.sh/helm-v${HELM3_VERSION}-linux-amd64.tar.gz | tar xzv && \
  mv linux-amd64/helm /usr/bin/helm && \
  rm -rf linux-amd64 && \
  mkdir /usr/bin/helm-bin && \
  ln -s /usr/bin/helm /usr/bin/helm-bin/helm
# jx-release-version
RUN curl -f -o ./jx-release-version -L https://github.com/jenkins-x/jx-release-version/releases/download/v${JX_RELEASE_VERSION}/jx-release-version_${JX_RELEASE_VERSION}_linux_amd64.tar.gz && \
  mv jx-release-version /usr/bin/ && \
  chmod +x /usr/bin/jx-release-version

CMD ["jx-release-version"]