user = node[:system][:user]
project_path = node[:fuse][:path]

rvm_shell 'trigger rvm hooks' do
  code "rvm rvmrc load #{project_path}"
  user user
  group user
  cwd project_path
  environment \
    'HOME' => "/home/#{user}",
    'USER' => user
end

execute 'Install bower' do
  command "sudo npm install -g bower"
  user user
  group user
  cwd project_path
end

rvm_shell 'bundle install' do
  code "rvm rvmrc load #{project_path} && bundle install"
  user user
  group user
  cwd project_path
end
