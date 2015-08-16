user = node[:system][:user]

directory node[:fuse][:path] do
  owner user
  group user
  mode 0755
  recursive true
  action :create
end

execute 'Sync project to VM' do
  command '~/.bin/syn -'
  user user
  cwd "/home/#{user}"
  environment \
    'HOME' => "/home/#{user}",
    'USER' => user
end
