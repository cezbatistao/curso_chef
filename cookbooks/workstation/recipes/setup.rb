package 'tree' do
  action :install
end

package 'ntp'

file '/etc/motd' do
  content 'This is the property of Carlos E Z Batistao'
  mode '0770'
  owner 'ceb'
  group 'root'
  action :create
end
