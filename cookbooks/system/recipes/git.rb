include_recipe 'apt'

apt_repository 'git-core' do
  uri 'ppa:git-core/ppa'
  components ['main']
  distribution 'trusty'
  action :add
end

package 'git' do
  action :install
end
