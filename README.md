# Dockofony
Run Symfony inside Docker containers.  Useful for local development of a Symfony project.

## Instructions
1. Copy `.env.sample` to `.env`
1. Provide a value for `VOLUME_WEB` and `VOLUME_DB` in `.env`. `VOLUME_WEB` is the path to your Symfony project.
1. Run `docker compose up --build`
1. The Symfony application should be available at http://localhost:8089 and the Adminer database browser at http://localhost:8087

## Instructions for CodeIgniter2
```
docker compose up ci2_php56
```

## Instructions for CodeIgniter
Run with the local development server
```
php spark serve --host 0.0.0.0 --port <service web host port>
```

## Scaffold a CakePHP project
```
cd cakephp-scaffold
clear && ./scaffold.sh ~/act/repos/project-deployments <mysql user> <mysql user pass> 127.0.0.1 <mysql host port> <db name>
```
