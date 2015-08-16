node[:system][:packages].values.flatten.each do |name|
  package name
end
