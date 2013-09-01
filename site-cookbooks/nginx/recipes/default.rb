#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

if node["platform"] == "centos"
	execute "add nginx yum repo" do
		command "sudo rpm -ivh http://nginx.org/packages/centos/6/noarch/RPMS/nginx-release-centos-6-0.el6.ngx.noarch.rpm"
	end
end

package "nginx" do
	action :install
end

service "nginx" do
	action [:enable, :start]
end
