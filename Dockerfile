FROM openjdk:8-jdk-alpine

COPY * /tmp/build/

ADD target/test-eureka-server-0.0.1.jar app.jar

#RUN cd /tmp/build && mvn package \
#        #拷贝编译结果到指定目录
#        && mv /tmp/build/target/*.jar /app.jar \
#        #清理编译痕迹
#        && cd / && rm -rf /tmp/build

EXPOSE 10001

#ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
ENTRYPOINT [ "sh", "-c", "java -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]

