# Uygulamanın çaliması için JDK lazım.
# FROM amazoncorretto:17
FROM openjdk:17

# Projemizin Jar dosyasının konumu
ARG JAR_FILE=target/*.jar

#  Projenin Jar halini Docker'ın içine şu isimle kopayala
COPY ${JAR_FILE} devops-hello-app.jar

# terminalden çalıştırmak istediğin komutları CMD ile kullaniyorsunuz.
CMD apt-get update
CMD apt-get upgrade -y

# iç portu sabitlemek için 
EXPOSE 8080

# Uygulamanın çalışacağı komut
ENTRYPOINT ["java","-jar","devops-hello-app.jar"]
