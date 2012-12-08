$LOAD_PATH << File.expand_path('../lib', __FILE__)

require 'mountain_bike'

puts "---------------------"
puts "TwoWheels"
puts "---------------------"

mb = MountainBike.new( { base_price: 2000, front_suspension_price: 150, rear_suspension_price: 200, commission: 0.05, tire_width: 1.5, front_fork_travel: 4, rear_fork_travel: 5, type_code: :full_suspension })
puts "---> mb: #{mb.inspect}"
     
