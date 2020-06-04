yum update -y
     yum install -y epel-release nginx
	  systemctl enable nginx
	  firewall-cmd --zone=public --permanent --add-service=http
	  firewall-cmd --zone=public --permanent --add-service=https
	  firewall-cmd –-reload 
	  systemctl start nginx
     echo "this is first webserver" > /usr/share/nginx/html/index.html