#################################
#on ipenstack main server
###################################
[azureuser@myvm1 ~]$ ip a
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host
       valid_lft forever preferred_lft forever
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq master ovs-system state UP group default qlen 1000
    link/ether 00:0d:3a:56:b3:a3 brd ff:ff:ff:ff:ff:ff
    inet6 fe80::20d:3aff:fe56:b3a3/64 scope link
       valid_lft forever preferred_lft forever
3: ovs-system: <BROADCAST,MULTICAST> mtu 1500 qdisc noop state DOWN group default qlen 1000
    link/ether be:dc:e4:ba:32:3d brd ff:ff:ff:ff:ff:ff
4: br-tun: <BROADCAST,MULTICAST> mtu 1500 qdisc noop state DOWN group default qlen 1000
    link/ether b6:90:cd:51:1f:4f brd ff:ff:ff:ff:ff:ff
5: br-int: <BROADCAST,MULTICAST> mtu 1450 qdisc noop state DOWN group default qlen 1000
    link/ether c2:a8:16:6b:56:49 brd ff:ff:ff:ff:ff:ff
6: br-ex: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UNKNOWN group default qlen 1000
    link/ether 00:0d:3a:56:b3:a3 brd ff:ff:ff:ff:ff:ff
    inet 10.0.1.5/24 brd 10.0.1.255 scope global br-ex
       valid_lft forever preferred_lft forever
    inet6 fe80::2c07:41ff:fe10:a54b/64 scope link
       valid_lft forever preferred_lft forever
7: qbr5ca72964-ad: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1450 qdisc noqueue state UP group default qlen 1000
    link/ether a6:79:70:24:83:52 brd ff:ff:ff:ff:ff:ff
8: qvo5ca72964-ad@qvb5ca72964-ad: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1450 qdisc noqueue master ovs-system state UP group default qlen 1000
    link/ether 12:fe:6a:a1:98:0e brd ff:ff:ff:ff:ff:ff
    inet6 fe80::10fe:6aff:fea1:980e/64 scope link
       valid_lft forever preferred_lft forever
9: qvb5ca72964-ad@qvo5ca72964-ad: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1450 qdisc noqueue master qbr5ca72964-ad state UP group default qlen 1000
    link/ether a6:79:70:24:83:52 brd ff:ff:ff:ff:ff:ff
    inet6 fe80::a479:70ff:fe24:8352/64 scope link
       valid_lft forever preferred_lft forever
       
########################################################
#from a machine on same physical network but outside openstack
##########################################################
C:\Users\azureuser>ipconfig

Windows IP Configuration


Ethernet adapter Ethernet:

   Connection-specific DNS Suffix  . : icc3yusekeyevpm3fovmhi0yof.bx.internal.cloudapp.net
   Link-local IPv6 Address . . . . . : fe80::d1e:e66e:ad82:ff6d%4
   IPv4 Address. . . . . . . . . . . : 10.0.1.6
   Subnet Mask . . . . . . . . . . . : 255.255.255.0
   Default Gateway . . . . . . . . . : 10.0.1.1
   
 C:\Users\azureuser>ping 10.0.1.5

Pinging 10.0.1.5 with 32 bytes of data:
Reply from 10.0.1.5: bytes=32 time=3ms TTL=64
Reply from 10.0.1.5: bytes=32 time<1ms TTL=64
Reply from 10.0.1.5: bytes=32 time=1ms TTL=64
Reply from 10.0.1.5: bytes=32 time=1ms TTL=64

Ping statistics for 10.0.1.5:
    Packets: Sent = 4, Received = 4, Lost = 0 (0% loss),
Approximate round trip times in milli-seconds:
    Minimum = 0ms, Maximum = 3ms, Average = 1ms
    
   
  C:\Users\azureuser>ping 10.0.1.117

Pinging 10.0.1.117 with 32 bytes of data:
Reply from 10.0.1.6: Destination host unreachable.
Reply from 10.0.1.6: Destination host unreachable.
Reply from 10.0.1.6: Destination host unreachable.
Reply from 10.0.1.6: Destination host unreachable.

Ping statistics for 10.0.1.117:
    Packets: Sent = 4, Received = 4, Lost = 0 (0% loss),
