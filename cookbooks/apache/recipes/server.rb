#
# Cookbook:: apache
# Recipe:: server
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'apache2' # apache2 para ubuntu, ou httpd para redhat, deixei especifico msm para ubuntu

file '/var/www/html/index.html' do
  content "<h1>Hello world Chef Apache Server</h1>
  <h2>HOSTNAME: #{node['hostname']}</h2>
  <h2>IPADDRESS: #{node['ipaddress']}</h2>
  "
end

service 'apache2' do
  action [:enable, :start]
end
