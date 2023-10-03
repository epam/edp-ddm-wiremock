FROM nexus-docker-registry.apps.cicd2.mdtu-ddm.projects.epam.com/holomekc/wiremock-gui:2.32.0.2
USER root:root
RUN mkdir /metrics-exporter
COPY ./files/ /metrics-exporter/
ENV JAVA_OPTIONS=-javaagent:/metrics-exporter/jmx_prometheus_javaagent-0.19.0.jar=9999:/metrics-exporter/wiremock-metrics-config.yaml
USER wiremock
