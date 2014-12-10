
FROM uport/ubuntu:latest
MAINTAINER David Schmitz


ENV NEXUS_BASE_VERSION 2.11.0
ENV NEXUS_VERSION 2.11.0-02
ENV NEXUS_UNZIP_P2 0.14.0

RUN mkdir -p /opt/sonatype-nexus /opt/sonatype-work
RUN wget -O /tmp/nexus-$NEXUS_BASE_VERSION-bundle.zip http://download.sonatype.com/nexus/oss/nexus-$NEXUS_BASE_VERSION-bundle.zip
RUN wget -O /tmp/nexus-p2-repository-plugin-$NEXUS_VERSION-bundle.zip https://repository.sonatype.org/service/local/repositories/releases/content/org/sonatype/nexus/plugins/nexus-p2-repository-plugin/$NEXUS_VERSION/nexus-p2-repository-plugin-$NEXUS_VERSION-bundle.zip
RUN wget -O /tmp/nexus-p2-bridge-plugin-$NEXUS_VERSION-bundle.zip https://repository.sonatype.org/service/local/repositories/releases/content/org/sonatype/nexus/plugins/nexus-p2-bridge-plugin/$NEXUS_VERSION/nexus-p2-bridge-plugin-$NEXUS_VERSION-bundle.zip
RUN wget -O /tmp/unzip-repository-plugin-$NEXUS_UNZIP_P2-bundle.zip http://repo1.maven.org/maven2/org/eclipse/tycho/nexus/unzip-repository-plugin/$NEXUS_UNZIP_P2/unzip-repository-plugin-$NEXUS_UNZIP_P2-bundle.zip

RUN unzip /tmp/nexus-$NEXUS_BASE_VERSION-bundle.zip -d /opt
RUN ln -s /opt/nexus-$NEXUS_VERSION /opt/nexus 
RUN unzip /tmp/nexus-p2-repository-plugin-$NEXUS_VERSION-bundle.zip -d /opt/nexus/nexus/WEB-INF/plugin-repository
RUN unzip /tmp/nexus-p2-bridge-plugin-$NEXUS_VERSION-bundle.zip -d /opt/nexus/nexus/WEB-INF/plugin-repository
RUN unzip /tmp/unzip-repository-plugin-$NEXUS_UNZIP_P2-bundle.zip -d /opt/nexus/nexus/WEB-INF/plugin-repository

RUN useradd --user-group --system --home-dir /opt/sonatype-nexus nexus
RUN chown -R nexus:nexus /opt/nexus /opt/nexus-$NEXUS_VERSION /opt/sonatype-work
RUN sed -i '/#RUN_AS_USER=/c\RUN_AS_USER=nexus' /opt/nexus/bin/nexus

VOLUME /opt/sonatype-work

EXPOSE 8081
CMD [ "/opt/nexus/bin/nexus", "console" ]
