user     = node[:system][:user]
ssh_path = "/home/#{user}/.ssh"

directory ssh_path do
  owner user
  group user
  mode 0700
  action :create
end

%w(id_rsa id_rsa.pub).each do |name|
  cookbook_file "#{ssh_path}/#{name}" do
    source "ssh/#{name}"
    owner user
    group user
    mode name.end_with?('pub') ? 0644 : 0600
    ignore_failure true
    action :create_if_missing
  end
end
