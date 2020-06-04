yum -y install -y keepalived
	 mv /etc/keepalived/keepalived.conf /etc/keepalived/keepalived.conf_bac
	 cp /vagrant/keepalived.conf /etc/keepalived/keepalived.conf
	 systemctl enable keepalived
	 systemctl start keepalived