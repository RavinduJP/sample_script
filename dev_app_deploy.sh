# script for killing old .jar file and up the new .jar file

kill -9 $(lsof -t -i:8080)
jar uf test-*-0.0.1-SNAPSHOT.jar BOOT-INF/classes/application.properties
nohup java -jar test-*-0.0.1-SNAPSHOT.jar &




