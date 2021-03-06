user = node[:system][:user]

remote_directory "/home/#{user}/.bin" do
  source '.bin'
  owner user
  group user
  mode 0755
  files_owner user
  files_group user
  files_mode 0755
  action :create_if_missing
end
