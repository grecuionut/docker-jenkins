FROM jenkins
MAINTAINER Ionut Grecu

USER root

VOLUME [ "/var/jenkins_home" ]

EXPOSE 8080

# Install _Jenkins_ plugins
RUN /usr/local/bin/install-plugins.sh \
    scm-sync-configuration:0.0.10 \
    workflow-aggregator:2.4 \
    docker-workflow:1.8
