FROM gitlab-registry.mpcdf.mpg.de/nomad-lab/nomad-fair:2121-fix-issue-with-loading-old-style-plugins
USER root
RUN apt-get update
RUN apt-get -y install git
USER nomad
COPY plugins.txt plugins.txt
RUN pip install -r plugins.txt
COPY nomad.yaml nomad.yaml
