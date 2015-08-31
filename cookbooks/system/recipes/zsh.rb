user = node[:system][:user]

package 'zsh'

execute 'Install oh-my-zsh' do
  command 'git clone git://github.com/robbyrussell/oh-my-zsh.git .oh-my-zsh'
  cwd "/home/#{user}"
  not_if "test -d /home/#{user}/.oh-my-zsh"
end

cookbook_file "/home/#{user}/.zshrc" do
  source 'zsh/.zshrc'
  owner user
  group user
  mode 0664
  action :create
end

cookbook_file "/home/#{user}/.oh-my-zsh/themes/af-magic2.zsh-theme" do
  source 'zsh/af-magic2.zsh-theme'
  owner user
  group user
  mode 0664
  action :create
end

execute 'Register zsh as default shell' do
  command "chsh -s /bin/zsh #{user}"
end
