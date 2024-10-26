# Dockofony
Run Symfony inside Docker containers.  Useful for local development of a Symfony project.

## Instructions
1. Copy `.env.sample` to `.env`
1. Provide a value for `VOLUME_APACHE` and `VOLUME_DB` in `.env`. `VOLUME_APACHE` is the path to your Symfony project.
1. Run `docker compose up --build`
1. The Symfony application should be available at http://localhost:8089 and the Adminer database browser at http://localhost:8087
