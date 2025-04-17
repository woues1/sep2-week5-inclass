FROM maven:latest

LABEL authors="Toni"

COPY ./src /usr/src/myapp

WORKDIR /usr/src/myapp

RUN javac App.java

CMD ["java", "App", "target/app.jar"]
