include_recipe 'cooktest::depends'
require 'aws-sdk-ec2'
ec2 = Aws::EC2::Client.new(region: 'us-east-1')
describe_instances_result = ec2.describe_instances
puts describe_instances_result
#bash 'dummyfile' do
#    code <<-EOH
#        echo "#{describe_instances_result}" >> /root/test.txt
#        EOH
#end
