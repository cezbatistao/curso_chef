#
# Cookbook:: apache
# Recipe:: server
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'apache2' # apache2 para ubuntu, ou httpd para redhat, deixei especifico msm para ubuntu

cookbook_file '/var/www/html/static_index.html' do
  source 'static_index.html'
end

remote_file '/var/www/html/hulk_img.jpg' do
  source 'http://nerdgeekfeelings.com/wp-content/uploads/2015/08/hulk.jpg'
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
end

service 'apache2' do
  action [:enable, :start]
end
