case node["platform"]
when "ubuntu"

default["pkg_name"] = "apache2"
default["service_name"] = "apache2"
default["document_root"] = "/var/www/html"

when "amazon"
default["pkg_name"] = "httpd"
default["service_name"] = "httpd"
default["document_root"] = "/var/www/html"


end
