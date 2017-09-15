#
# Cookbook Name:: apache21
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#

package "httpd"do

action :install

end

service "httpd"do 


action [ :enable, :start]

end

file "/var/www/html/index.html" do

content "<html><body><h1>'welcome to chef world '</h1></body></html>"

end

