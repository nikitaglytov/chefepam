#template "/tmp/chefepam.txt" do
#      source "chefepam.erb"
#      mode 0755
#      owner "root"
#      group "root"
#    end
#template "/tmp/chefepam1.txt" do
#      source "chefepam1.erb"
#      mode 0755
#      owner "root"
#      group "root"
#    end
#cookbook_file "/tmp/chefepamfromfile.txt" do
#  source 'chefepamfile.txt'
#  owner 'root'
#  group 'root'
#  action :create
#    end
#directory '/var/testdirectory' do
#  owner 'root'
#  group 'root'
#  mode '0755'  action :create
#    end

#file '/var/www/index.php' do
#  content 'Hello Mikita'
#  mode '0755'
#  owner 'root'
#  group 'root'
#    end
 
##########################################
directory '/var/www/cgi-bin/basic' do
   owner 'root'
   group 'root'
   mode '0755'
   action :create
  end


template "/etc/httpd/conf/node['hostname'].epam.com.cer_1" do
    source "ecsc00a0056d.epam.com.cer.erb"
    mode 0755
    owner "root"
    group "root"
  end

template "/etc/httpd/conf/ecsc00a0056d.epam.com.key_1" do
    source "ecsc00a0056d.epam.com.key.erb"
    mode 0755
    owner "root"
    group "root"
  end

template "/etc/httpd/conf/ecsc00a0056d.epam.com.pem_1" do
    source "ecsc00a0056d.epam.com.pem.erb"
    mode 0755
    owner "root"
    group "root"
  end

template "/etc/httpd/conf/httpd.conf_1" do
    source "httpd.conf.erb"
    mode 0755
    owner "root"
    group "root"
  end

template "/etc/httpd/conf.d/basic.conf_1" do
    source "basic.conf.erb"
    mode 0755
    owner "root"
    group "root"
  end

template "/etc/httpd/conf.d/ssl.conf_1" do
    source "ssl.conf.erb"
    mode 0755
    owner "root"
    group "root"
  end

template "/var/www/cgi-bin/basic/check.py_1" do
    source "check.py.erb"
    mode 0755
    owner "root"
    group "root"
  end

template "/var/www/html/ca_cert.cer_1" do
    source "ca_cert.cer.erb"
    mode 0755
    owner "root"
    group "root"
  end


template "/var/www/html/log-request.log_1" do
    source "log-request.log.erb"
    mode 0755
    owner "root"
    group "root"
  end

