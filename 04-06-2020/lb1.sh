yum -y update
	 yum -y install haproxy
	 cd /etc/haproxy/
	 mv haproxy.cfg haproxy.cfg_bac
	 cp /vagrat/haproxy.cfg /etc/haproxy/haproxy.cfg
	 systemctl enable haproxy
	 systemctl start haproxy