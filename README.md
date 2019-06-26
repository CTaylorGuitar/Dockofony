# Dockofony
A very primitive method of running Symfony from inside Docker containers.  

## Instructions
1. Place your symfony app inside the symfony folder.
1. Inside docker-compose.yml
    - Set passwords and database name.
    - Set your username in the local path where the mysql container database files will be created.
1. Run `docker-compose up`
1. The application should be available at http://localhost:8080

Any comments gratefully received.