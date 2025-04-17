FROM maven:latest

WORKDIR /usr/src/myapp

# Copy POM file and download dependencies
COPY pom.xml .
COPY src ./src

# Build the application
RUN mvn clean package

# Run the application
CMD ["java", "-jar", "target/app.jar"]