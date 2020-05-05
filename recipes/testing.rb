package 'httpd' do
  action :upgrade
end

# Start docker service
service 'httpd' do
  action [:enable, :start]
end
