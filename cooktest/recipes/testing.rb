#update system
execute "upddate" do
  command "yum update -y"
  action :run
end
#install httpd
package 'httpd' do
  action :upgrade
end
# Start docker service
service 'httpd' do
  action [:enable, :start]
end
#add a file to root
bash 'dummyfile' do
  code <<-EOH
    echo "CREATEME" >> /root/test.txt
    EOH
end
