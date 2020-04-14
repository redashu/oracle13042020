#!/bin/bash

if  [ "$x" == "webapp1" ]
then
	cp -rvf  /mywebapps/app1/*  /var/www/html/
	httpd  -DFOREGROUND

elif   [ "$x"  ==  "webapp2"  ]
then
	cp -rvf  /mywebapps/app2/*  /var/www/html/
	httpd  -DFOREGROUND

else 
	echo   "Page not Found "   >/var/www/html/index.html
	httpd -DFOREGROUND

fi
