FROM centos:centos7.4.1708

MAINTAINER jpassing
ENV container docker

RUN yum install -y epel-release 
RUN yum install -y python-pip python-wheel python-devel freetype-devel libpng zeromq-devel gcc-c++ blas-devel lapack-devel

RUN pip install pyzmq --install-option="--zmq=/usr/lib"
RUN pip install jupyter matplotlib numpy pandas scipy scikit-learn

RUN mkdir /root/.jupyter
COPY jupyter_notebook_config.py /root/.jupyter/jupyter_notebook_config.py

WORKDIR /u1
CMD mkdir -p notebook && jupyter notebook --allow-root

EXPOSE 8888
