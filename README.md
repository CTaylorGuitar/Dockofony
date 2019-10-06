# Dockofony
A very primitive method of running Symfony from inside Docker containers.  

## Instructions
1. Place your symfony source files inside the symfony folder.
1. In docker-compose.yml set the passwords and a database name.
1. Rename .env.sample to .env and set host port numbers for each container and a path for the mysql files.
1. Run `docker-compose up`
1. The application should be available at http://localhost including a port number if applicable.
