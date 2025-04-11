# This is where the appfile(AppFile.sh) will go.
# This is the first line of a script called a shebang.
# It's used in script files to set bash as the default shell for command execution.
#!/usr/bin/bash

# nginx is a web server often used as a proxy, load balancer, and HTTP cache.
# This command is used start the nginx service. It will initiate the Nginx processes 
# for web requests.
service nginx start

# sed is used to modify lines from a specified file parameter.
# This is where we change the default nginx webpage welcome to Spencer's webpage in the
# docker instance.
sed -i "s/Welcome to nginx/Welcome to Spencer's page/" /var/www/html/*.html

# sed is used to modify lines from a specified file parameter, same as we did before.
# This is where we change the occurrences of "nginx" in the same html file with our
# desired text of (pronounced as EngineX).
sed -i "s/nginx/nginx (pronounced as EngineX)/g" /var/www/html/*.html
