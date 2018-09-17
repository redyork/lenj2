# lenj2
Letsencrypt + nginx + jenkins : without docker-compose

IMPORTANT
Before you start:
 - FQDN must already pointing on correct ip. If not, container will be builded but cert request will be failed.
 - Replace vars values by your own info in ".env" file.
 - folder "data/jenkins" must be accesible for user with uuid 1000 (user jenkins in a container)

How to build:

docker build -t lenj .


How to run:

./run.sh 

or see content of "run.sh" file