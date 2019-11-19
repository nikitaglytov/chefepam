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


template "/etc/httpd/conf/#{node['hostname']}.epam.com.cer" do
    source "ecsc00a0056d.epam.com.cer.erb"
    mode 0755
    owner "root"
    group "root"
  end

template "/etc/httpd/conf/#{node['hostname']}.epam.com.key" do
    source "ecsc00a0056d.epam.com.key.erb"
    mode 0755
    owner "root"
    group "root"
  end

template "/etc/httpd/conf/#{node['hostname']}.epam.com.pem" do
    source "ecsc00a0056d.epam.com.pem.erb"
    mode 0755
    owner "root"
    group "root"
  end

template "/etc/httpd/conf/httpd.conf" do
    source "httpd.conf.erb"
    mode 0755
    owner "root"
    group "root"
  end

template "/etc/httpd/conf.d/basic.conf" do
    source "basic.conf.erb"
    mode 0755
    owner "root"
    group "root"
  end

template "/etc/httpd/conf.d/ssl.conf" do
    source "ssl.conf.erb"
    mode 0755
    owner "root"
    group "root"
  end

template "/var/www/cgi-bin/basic/check.py" do
    source "check.py.erb"
    mode 0755
    owner "root"
    group "root"
  end

template "/var/www/html/ca_cert.cer" do
    source "ca_cert.cer.erb"
    mode 0755
    owner "root"
    group "root"
  end


template "/var/www/html/log-request.log" do
    source "log-request.log.erb"
    mode 0755
    owner "root"
    group "root"
  end

template "/etc/httpd/conf/gdig2.crt" do 
    source "gdig2.erb"
    mode 0755
    owner "root"
    group "root"
  end 

template "/etc/httpd/conf/.htpasswd" do
    source ".htpasswd"
    mode 0755
    owner "root"
    group "root"
  end


 
