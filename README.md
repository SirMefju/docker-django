## full content ssl web page in python django via docker
### Table of contents:
* [working environment](#working-environment)
* [ssl certyficate](#ssl-certyficate)
  * [generate self signed certyficate](#generate-self-signed-certyficate)
  
### working environment
To run environment on Your computer must have is ```Docker``` and ```docker-file```. To install docker check my [docker repository](https://github.com/SirMefju/notes/blob/main/docker.md) or orginal documentation. You don't need to install django or django-sslserver because every libraries are in docker container. So download this repository and run shell:
```R
cd docker-django
docker-compose up --build
```
On the screen You must see something like that:
### ssl certyficate
Application need a ssl certyficate to make web page encrypted. You need to make your own certyficate, because I don't share mine. 
Remember self signed certyficate is not the most secure certyficate in the world so your web browser will be warn You from malicious software.

#### generate self signed certyficate
You can do that in one command:
```R
openssl req -x509 -newkey rsa:4096 -keyout key.pem -out cert.pem -sha256 -days 365
```
You dont need to complement every field, just click enter. Only password is necessary.
