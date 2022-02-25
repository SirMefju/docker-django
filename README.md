## full content ssl web page in python django via docker
### Table of contents:
* [ssl certyficate](#ssl-certyficate)
  * [generate self signed certyficate](#generate-self-signed-certyficate)
  

### ssl certyficate
Application need a ssl certyficate to make web page encrypted. You need to make your own certyficate, because I don't share mine. 
Remember self signed certyficate is not the most secure certyficate in the world so your web browser will be warn You from malicious software.

#### generate self signed certyficate
You can do that in one command:
```R
openssl req -x509 -newkey rsa:4096 -keyout key.pem -out cert.pem -sha256 -days 365
```
You dont need to complement every field, just click enter. Only password is necessary.
