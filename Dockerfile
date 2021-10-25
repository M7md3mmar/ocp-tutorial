FROM openjdk:11
ENV SERVICE_FILE ocp-tutorial.jar
ENV SERVICE_HOME /home/ammar/superApp/mybusiness/openshift/jars
EXPOSE 9080
COPY target/$SERVICE_FILE $SERVICE_HOME/
WORKDIR $SERVICE_HOME
ENTRYPOINT ["sh", "-c"]
CMD ["exec java -jar $SERVICE_FILE"]