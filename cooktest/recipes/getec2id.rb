include_recipe 'cooktest::depends'

require 'aws-sdk-ec2'

ec2 = Aws::EC2::Client.new(region: 'us-east-1')

describe_instances_result = ec2.describe_instances

describe_instances_result.reservations.each do |reservation|
  if reservation.instances.count > 0
    reservation.instances.each do |instance|
      puts "=" * (instance.instance_id.length + 13)
      puts "Instance ID: #{instance.instance_id}"
  end
end
end
