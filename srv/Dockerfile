FROM sapmachine:21.0.8-jre-ubuntu-jammy
WORKDIR /app
COPY target/srv-exec.jar sflight-srv.jar
ENV JAVA_TOOL_OPTIONS="-XX:+UseContainerSupport -XX:MaxRAMPercentage=75"
EXPOSE 4004
ENTRYPOINT ["java","-jar","sflight-srv.jar"]