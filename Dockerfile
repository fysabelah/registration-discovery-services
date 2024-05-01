#
# Build stage
#
FROM maven:3.9.6-amazoncorretto-21 AS build

WORKDIR /order-management

COPY pom.xml .
RUN mvn -B dependency:go-offline

COPY src ./src
RUN mvn -B package -DskipTests

#
# Package stage
#
FROM amazoncorretto:21-alpine-jdk

WORKDIR /order-management

COPY --from=build /order-management/target/*.jar ./order-management-server.jar

EXPOSE 7070

ENTRYPOINT ["java","-jar","order-management-server.jar"]