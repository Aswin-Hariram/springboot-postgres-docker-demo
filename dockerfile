# Use the official OpenJDK 17 image as the base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Maven Wrapper files
COPY .mvn/ .mvn
COPY mvnw .
COPY pom.xml .

# Make the mvnw file executable
RUN chmod +x mvnw

# Copy the source code
COPY src ./src

# Build the application
RUN ./mvnw clean package -DskipTests

# Expose the port the app runs on
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "target/simpledemo2-0.0.1-SNAPSHOT.jar"]