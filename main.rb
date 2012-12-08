$LOAD_PATH << File.expand_path('../lib', __FILE__)

require 'mountain_bike'

puts "---------------------"
puts "TwoWheels"
puts "---------------------"

fullmb = MountainBike.new( FullSuspensionMountainBike.new( 
 #type_code: :full_suspension,
 tire_width: 1.5, 
 base_price: 2000, 
 commission: 0.05, 
 front_suspension_price: 150, 
 front_fork_travel: 4, 
 rear_suspension_price: 200, 
 rear_fork_travel: 5 ) )

puts "---> fullmb: #{fullmb.to_s}"
puts ""
puts ""
puts ""
rmb = MountainBike.new( RigidMountainBike.new( 
 tire_width: 1.5, 
 base_price: 2000, 
 commission: 0.05) )
puts "---> rmb: #{rmb.to_s}"
puts ""
puts ""
puts ""
