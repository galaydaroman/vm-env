package 'vim'

execute 'Install VIM JANUS' do
  command "curl -Lo- https://bit.ly/janus-bootstrap | bash"
  user node[:system][:user]
  group node[:system][:user]
  cwd "/home/#{node[:system][:user]}"
  environment \
    'HOME' => "/home/#{node[:system][:user]}",
    'USER' => node[:system][:user]

  not_if "test -d /home/#{user}/.vim"
end
