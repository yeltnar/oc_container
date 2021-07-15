FROM ubuntu:20.04

RUN apt update; apt install curl jq gawk tar -y;

RUN curl -O https://mirror.openshift.com/pub/openshift-v4/clients/ocp/stable/openshift-client-linux.tar.gz

RUN mkdir oc_folder && cd oc_folder && tar -zxvf ../openshift-client-linux.tar.gz

RUN echo 'export PATH="/oc_folder:$PATH"' >> ~/.bashrc
