package 'tree' do
  action :install
end

package 'ntp'

package 'git' do
  action :install
end

# aqui esta sendo acessado as informacoes do ohai, via node objects, ex: ohai memory (linha de comando)
ipaddress = node['ipaddress']
total_memory = node['memory']['total']

template '/etc/motd' do
  source 'motd.erb'
  variables(
    :name => 'Carlos E Z Batistao',
    :ipaddress => ipaddress,
    :total_memory => total_memory
  )
  mode '0770'
  owner 'ceb'
  group 'root'
  action :create
end

user 'user1' do
  comment 'user1 to workstation recipe'
  home '/home/user1'
  shell '/bin/bash'
end

group 'admins' do
  members 'user1'
end