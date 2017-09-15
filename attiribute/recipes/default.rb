#
# Cookbook Name:: attiribute
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package node["pkg_name"] do

action :install

end

service node["service_name"]do

action [ :enable, :start]

end

template "#{node["document_root"]}/index.html" do

source "index.html.erb"

end


