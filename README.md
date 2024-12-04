# sample_script
This is sample bash script for up to the new jar file


--- script for killing old .jar file and up the new .jar file ---

kill -9 $(lsof -t -i:port)
--- kill the previous running jar file using port.  (port like 8080 / 8081 / etc) 

jar uf test-*-0.0.1-SNAPSHOT.jar BOOT-INF/classes/application.properties
--- implement the application.property file to the jar file

nohup java -jar test-*-0.0.1-SNAPSHOT.jar &
--- up the new jar file 

NOTE: the meaning of " test-*- " is the jar file bigins test- and grep the all jar file begins that structure. 
