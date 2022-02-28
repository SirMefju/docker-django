## full content ssl web page in python django via docker
This repository is full base to make application in django via docker. Read full ```README.md``` because ever details matter here.
In the application You have everything what You need to start Your own application in django.
### Table of contents:
* [working environment](#working-environment)
* [ssl certyficate](#ssl-certyficate)
  * [generate self signed certyficate](#generate-self-signed-certyficate)
* [getting involved](#getting-involved)
* [license](#license)
  
### working environment
To run environment on Your computer must have is ```Docker``` and ```docker-file```. To install docker check my [docker repository](https://github.com/SirMefju/notes/blob/main/docker.md) or orginal documentation. You don't need to install django or django-sslserver because every libraries are in docker container. So download this repository and run shell:
```R
cd docker-django
docker-compose up --build
```
On the screen You need see something like that:
```R
Creating application ... done
Attaching to application
application | Validating models...
application |
application | System check identified no issues (0 silenced).
application | February 28, 2022 - 08:38:17
application | Django version 4.0.2, using settings 'main.settings'
application | Starting development server at https://0.0.0.0:8000/
application | Using SSL certificate: /usr/local/lib/python3.10/site-packages/sslserver/certs/development.crt
application | Using SSL key: /usr/local/lib/python3.10/site-packages/sslserver/certs/development.key
application | Quit the server with CONTROL-C.
```
So, now come to Your favorite browser and try:
```html
https://127.0.0.1:8000
```

### ssl certyficate
Application need a ssl certyficate to make web page encrypted. You need to make your own certyficate, because I don't share mine. 
Remember self signed certyficate is not the most secure certyficate in the world so your web browser will be warn You from malicious software.

#### generate self signed certyficate
You can do that in one command:
```R
openssl req -x509 -newkey rsa:4096 -keyout key.pem -out cert.pem -sha256 -days 365
```
Password is necessary but You don't need to complement every field, just click enter.<br/>
On the screen You need to see something like that:
```R
Generating a RSA private key
.......................................................................++++
.......................................................................++++
writing new private key to 'key.pem'
Enter PEM pass phrase:
Verifying - Enter PEM pass phrase:
-----
You are about to be asked to enter information that will be incorporated
into your certificate request.
What you are about to enter is what is called a Distinguished Name or a DN.
There are quite a few fields but you can leave some blank
For some fields there will be a default value,
If you enter '.', the field will be left blank.
-----
Country Name (2 letter code) [AU]:
State or Province Name (full name) [Some-State]:
Locality Name (eg, city) []:
Organization Name (eg, company) [Internet Widgits Pty Ltd]:
Organizational Unit Name (eg, section) []:
Common Name (e.g. server FQDN or YOUR name) []:
Email Address []:
```

### getting involved
Feel free to open pull requests or issues. GitHub is the canonical location of this project.

### license
Be my guest :]
