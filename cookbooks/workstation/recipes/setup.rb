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

file '/etc/motd' do
  content "This is the property of Carlos E Z Batistao
  HOSTNAME: #{node['hostname']}
  IPADDRESS: #{ipaddress}
  CPU: #{node['cpu']['0']['mhz']}
  MEMORY: #{total_memory}
  "
  mode '0770'
  owner 'ceb'
  group 'root'
  action :create
end
