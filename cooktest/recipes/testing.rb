package 'httpd' do
  action :upgrade
end

# Start docker service
service 'httpd' do
  action [:enable, :start]
end

bash 'dummyfile' do
  code <<-EOH
    echo "CREATEME" >> /home/root/test.txt
    EOH
end
