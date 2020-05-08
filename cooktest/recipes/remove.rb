dep_gems = [ { "gem" => "aws-sdk*", "version" => "3" }]

dep_gems.each do |gem|
  chef_gem gem["gem"] do
    #compile_time true if Chef::Resource::ChefGem.instance_methods(false).include?(:compile_time)
    action :remove
    #options("--no-ri --no-rdoc")
    #version gem["version"]
  end
end
