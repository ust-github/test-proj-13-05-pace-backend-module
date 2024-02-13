FROM registry.ustpace.com/docker-sf/amazon-corretto-java-17:lts

LABEL MAINTAINER="UST Global"

ARG JAR_FILE
ARG APP_USER

WORKDIR /app

COPY  $JAR_FILE.jar /app/app.jar

#USER ${APP_USER:-nobody}
USER nobody

#ENTRYPOINT ["/entrypoint.sh"]
CMD ["tini", "--", "java", "-jar", "app.jar"]