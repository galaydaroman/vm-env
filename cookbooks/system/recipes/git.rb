apt_repository 'git-core' do
  uri 'ppa:git-core/ppa'
end

package 'git' do
  action :install
end
