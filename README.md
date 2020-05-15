# openstacklogs
Openstack logs

issue:Instance creation failing on a single node openstack
link: https://ask.openstack.org/en/question/127536/instance-creation-failing-on-a-single-node-openstack
Your problem is that your CirrOS image is not in a qcow2 format.
-------------------------------------------------------------------------
2020-05-12 09:08:20.621 17117 ERROR cinder.volume.manager ImageCopyFailure: Failed to copy image to volume: qemu-img: Could not open '/var/lib/cinder/conversion/tmpyxMNYgcentos7@lvm': Image is not in qcow2 format
Remove the CirrOS image and create a new one:

wget http://download.cirros-cloud.net/0.3.5/cirros-0.3.5-x86_64-disk.img

openstack image create "cirros" \
--file cirros-0.3.5-x86_64-disk.img \
--disk-format qcow2 --container-format bare \
--public

--------------------------------------------------------

