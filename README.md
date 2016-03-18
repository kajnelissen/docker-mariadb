# Dockerized MariaDB

This image extends the [official MariaDB docker image](https://hub.docker.com/_/mariadb/).

## Running the container ##

To run the container without any mounted volumes:

    docker run --name <name of your container> -p :3306:3306 -d kajnelissen/docker-mariadb:<tag>

If you want to store your data, mount a volume when using the `docker run` command like this:

    docker run --name <name of your container> -p :3306:3306 -v /some/dir:/var/lib/mysql -d kajnelissen/docker-mariadb:<tag>

This will mount the `/some/dir` directory from the host system as `/var/lib/mysql` in the container. See the documentation of the official image for more information about this.

## Usage with Docker Compose ##

	mariadb:
    	image: kajnelissen/docker-mariadb:<tag>
    	volumes:
        	- /some/dir:/var/lib/mysql
    	ports:
        	- "3306:3306"

## FAQ ##

- **Root user credentials:** You can connect to a running instance of this container using `root` for the username and password.

## Troubleshooting ##

- Using this image within a Docker Compose setup on Windows with Docker Machine and having problems mounting the volume? By default, only the C:/Users folder is being registered for mounting in VirtualBox.