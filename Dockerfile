FROM localhost:5000/store/appdynamics/java:4.5_jdk8-alpine
RUN mkdir -p /opt/hello-world
ENV HW_HOME=/opt/hello-world
ADD helloworld.jar $HW_HOME/
WORKDIR $HW_HOME
ENV APPDYNAMICS_CONTROLLER_HOST_NAME teresa2018110812282714.saas.appdynamics.com
ENV APPDYNAMICS_CONTROLLER_PORT 443
ENV APPDYNAMICS_CONTROLLER_SSL_ENABLED true
ENV APPDYNAMICS_AGENT_APPLICATION_NAME myclient
ENV APPDYNAMICS_AGENT_TIER_NAME clienttier
ENV APPDYNAMICS_AGENT_NODE_NAME clientnode
ENV APPDYNAMICS_AGENT_ACCOUNT_NAME teresa2018110812282714
ENV APPDYNAMICS_AGENT_ACCOUNT_ACCESS_KEY kt91tpqvhsok
CMD ["java","-javaagent:/opt/appdynamics/javaagent.jar","-Dappdynamics.proxySet=true", "-Dappdynamics.http.proxyHost=136.75.167.117", "-Dappdynamics.http.proxyPort=3128", "-Dappdynamics.https.proxyHost=136.75.167.117", "-Dappdynamics.http.proxyPort=3128", "-jar", "./helloworld.jar"]
