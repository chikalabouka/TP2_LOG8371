FROM docker.elastic.co/elasticsearch/elasticsearch:7.6.1

USER root

RUN yum install -y wget java-1.8.0-openjdk nmap curl net-tools

RUN wget http://download-keycdn.ej-technologies.com/jprofiler/jprofiler_linux_11_1_2.tar.gz -P /tmp/ &&\
 tar -xzf /tmp/jprofiler_linux_11_1_2.tar.gz -C /usr/local &&\
 rm /tmp/jprofiler_linux_11_1_2.tar.gz

ENV JPAGENT_PATH="-agentpath:/usr/local/jprofiler11.1.2/bin/linux-x64/libjprofilerti.so=port=8849"
ENV INSTALL4J_JAVA_HOME="/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.191.b12-1.el7_6.x86_64/jre/bin/java"

RUN chown -R elasticsearch:elasticsearch /usr/local/jprofiler11.1.2

USER elasticsearch

WORKDIR /home/elasticsearch

EXPOSE 9200 8849