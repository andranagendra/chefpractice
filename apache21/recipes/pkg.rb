package_name = "httpd"
service_name = "httpd"
document_name = "/var/www/html"

if node["platform"] == "ubuntu"

package_name  = "apache2"
service_name  = "apache2"
document_root = "/var/www/html"

end

package package_name do

action :install 
end

service service_name do

action [ :enable, :start]

end

cookbook_file "#{document_name}/index.html"do

source "index.html"

end

