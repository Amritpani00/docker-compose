# Use a valid OpenJDK 17 image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /usr/app/

# Copy your Spring Boot JAR into the container
COPY target/spring-boot-mysql.jar spring-boot-mysql.jar

# Expose port 8080
EXPOSE 8080

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "spring-boot-mysql.jar"]
