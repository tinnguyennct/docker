FROM debezium/kafka
#FROM debezium/connect:1.7
RUN mkdir -p /kafka/etc/
ADD prom-jmx-agent-config.yml /kafka/etc/prom-jmx-agent-config.yml
ADD jmx_prometheus_javaagent-0.17.0.jar /kafka/etc/jmx_prometheus_javaagent.jar
