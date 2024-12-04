# sample_script
This is sample bash script for up to the new jar file



--- script for killing old .jar file and up the new .jar file ---

kill -9 $(lsof -t -i:port)
--- Kill the existing Java process running on port (the old .jar file).  (port like 8080 / 8081 / etc) 


jar uf test-*-0.0.1-SNAPSHOT.jar BOOT-INF/classes/application.properties
--- Update the .jar file adding the application.property file.

nohup java -jar test-*-0.0.1-SNAPSHOT.jar &
--- start the new jar file 


NOTE: The wildcard * allows this to match any JAR file that starts with test- and ends with -0.0.1-SNAPSHOT.jar.



--------- How to writee and run the script --------- 

1. nano script_name.sh
2. write a script in created file.
3. save and close the file
4. Change the file's permissions to make it executable:
     chmod +x deploy.sh
   
6. Run the script by using the following command:
     ./deploy.sh

