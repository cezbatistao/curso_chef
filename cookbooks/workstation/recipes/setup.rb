package 'tree' do
  action :install
end

package 'ntp'

package 'git' do
  action :install
end

template '/etc/motd' do
  source 'motd.erb'
  mode '0770'
  owner 'ceb'
  group 'root'
  action :create
end
