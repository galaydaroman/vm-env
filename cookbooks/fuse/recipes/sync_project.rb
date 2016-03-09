user = node[:system][:user]

[node[:fuse][:projects_path], node[:fuse][:path]].each do |folder|
  directory folder do
    owner user
    group user
    mode 0755
    recursive false
    action :create
  end
end

execute 'Sync project to VM' do
  command '~/.bin/syn -'
  user user
  cwd "/home/#{user}"
  environment \
    'HOME' => "/home/#{user}",
    'USER' => user
end
