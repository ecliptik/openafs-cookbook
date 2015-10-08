#The OpenAFS version that ships with Ubuntu 14.04 can be broken sometimes
#This adds a more up-to-date PPA that builds across a much larger variety of kernels
apt_repository "openafs-ppa" do
  uri "http://ppa.launchpad.net/openafs/stable/ubuntu"
  distribution node['lsb']['codename']
  components ["main"]
  keyserver "keyserver.ubuntu.com"
  key "5169C82A"
end

#Install required packages to run the openafs-client and build the DKMS kernel module
package "linux-headers-#{node['kernel']['release']}"
package ['build-essential', 'openafs-modules-dkms', 'openafs-client']

#OpenAFS config dir
eo = "/etc/openafs"

#Use the afs.conf.erb template
template eo+'/afs.conf' do
  source "afs.conf.erb"
  notifies :restart, "service[openafs-client]"
  mode 0655
  owner "root"
  group "root"
end

#Use the afs.conf.client.erb template
template eo+"/afs.conf.client" do
  source "afs.conf.client.erb"
  notifies :restart, "service[openafs-client]"
  mode 0655
  owner "root"
  group "root"
end

#Use the ThisCell.erb template
template eo+'/ThisCell' do
  source "ThisCell.erb"
  notifies :restart, "service[openafs-client]"
  mode 0655
  owner "root"
  group "root"
end

#Use the CellServDB.erb template
template eo+'/CellServDB' do
  source "CellServDB.erb"
  notifies :restart, "service[openafs-client]"
  mode 0655
  owner "root"
  group "root"
end

#Enable and start openafs-client service
service 'openafs-client' do
  action [ :enable, :start ]
end
