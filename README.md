# docker-mysql

1) test.sql:

In the test.sql file i have write commands to create the database with name pucsdStudent having user pucsd with password pucsd. Then some commands are used to create the table and to insert some values.

2) Dockerfile :
In the docker file : FROM mysql : (to create mysql custom docker image). COPY ./test.sql /docker-entrypoint-initdb.d/: This command will read the test.sql file and the commands in the mysql will execute automatically . When we create mysql docker container then my scripts in the /docker-entrypoint-initdb.d will be executed automatically on startup.

3) Run commands:

sudo docker build -t mysql-server .

    This cmd build the custom image of mysql-server.
    build will create docker image.
    -t  is for image tag
    ‘.’ for current Dockerfile path

sudo docker run -d --name mysql -e MYSQL_ROOT_PASSWORD=pucsd mysql-server

    run cmd create the container from Docker image.
    -d is for run the container in the background.
    --name is give name to the container.
    -e is create the environment variable in a container.


sudo docker exec -it mysql bash

    exed to connect the container.
    After this we can use mysql-server

mysql pucsdStudent -u pucsd -p
Enter Password: pucsd

if ERROR 2002 (HY000) is occurs then give command dpkg --configure -a then again use above command
