
#  DOCKER 

============= docker login =============
```
docker login   --username mimaraslan     --password 123456789

docker login   -u         mimaraslan     -p        123456789
```

============= nginx =============
DIŞ_PORT:İÇ_PORT
```
docker run     -it     -d     -p 9991:80     --name my-nginx      nginx
```
http://localhost:9991

============= postgres =============
```
docker run  --name my-postgres   -p 9999:5432  -e POSTGRES_PASSWORD=123456789  -d  postgres
```

============= mysql =============
```
docker run  --name my-mysql      -p 9990:3306  -e MYSQL_ROOT_PASSWORD=123456789 -d  mysql 
```



============= Docker container adını değiştirne  =============
```
docker container rename my-app5 my-app1
```



============= kendi projemizi Docker image haline çevimek =============
```
docker build  --build-arg JAR_FILE=target/devops-001-hello-1.0.1.jar   --tag    mimaraslan/devops-001-hello:v001   .

docker build  --build-arg JAR_FILE=target/devops-001-hello-1.0.2.jar   --tag    mimaraslan/devops-001-hello:v002   .

docker build  --build-arg JAR_FILE=target/devops-001-hello-1.0.2.jar   --tag    mimaraslan/devops-001-hello:latest   .
```


============= kendi projemizi Docker image'den container haline çevimek =============
```
docker run     -it     -d     -p 8081:8080     --name my-app1      mimaraslan/devops-001-hello

docker run     -it     -d     -p 8082:8080     --name my-app2      mimaraslan/devops-001-hello

docker run     -it     -d     -p 8083:8080     --name my-app3      mimaraslan/devops-001-hello:v001

docker run     -it     -d     -p 8084:8080     --name my-app4      mimaraslan/devops-001-hello:v002

docker run     -it     -d     -p 8085:8080     --name my-app5      mimaraslan/devops-001-hello:latest
```

http://localhost:8081 </br>
http://localhost:8082 </br>
http://localhost:8083 </br>
http://localhost:8084 </br>
http://localhost:8085 </br>


============= Docker Hub'dan image çekmek =============

```
docker pull mimaraslan/devops-001-hello:v001

docker pull mimaraslan/devops-001-hello:v002

docker pull mimaraslan/devops-001-hello:latest

docker pull mimaraslan/devops-001-hello
```
