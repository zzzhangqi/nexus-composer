ARG NEXUS_VERSION=3.47.1
FROM sonatype/nexus3:${NEXUS_VERSION}

COPY nexus-core-feature-3.47.1-01-features.xml /opt/sonatype/nexus/system/org/sonatype/nexus/assemblies/nexus-core-feature/3.47.1-01/nexus-core-feature-3.47.1-01-features.xml
COPY nexus-repository-composer-0.0.30.jar /opt/sonatype/nexus/system/org/sonatype/nexus/plugins/nexus-repository-composer/0.0.30/nexus-repository-composer-0.0.30.jar

EXPOSE 8081
VOLUME /nexus-data