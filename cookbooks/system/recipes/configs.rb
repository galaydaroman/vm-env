user = node[:system][:user]

remote_directory "/home/#{user}" do
  source 'home'
  owner user
  group user
  mode 0755
  files_owner user
  files_group user
  files_mode 0644
  action :create
end
