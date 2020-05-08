dep_gems = [ { "gem" => "aws-sdk-ec2", "version" => "3" }]

dep_gems.each do |gem|
  chef_gem gem["gem"] do
    compile_time true if Chef::Resource::ChefGem.instance_methods(false).include?(:compile_time)
    action :install
    options("--no-ri --no-rdoc")
    version gem["version"]
  end
end

#ruby_block "import_gems" do
#    block do
#        dep_gems.each do |gem|
#            require gem["gem"]
#        end
#    end
#end
