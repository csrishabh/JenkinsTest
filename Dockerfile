
# Use an official Java runtime as a parent image
FROM java:8

# Make port 8081 available to the world outside this container	
EXPOSE 8081


ADD build\libs\PipeLineTest-0.0.1-SNAPSHOT.jar app.jar


#RUN bash -c 'touch /app.jar'


ENTRYPOINT exec java $JAVA_OPTS -jar /app.jar
