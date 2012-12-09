require 'rigid_mountain_bike'
require 'front_suspension_mountain_bike'
require 'full_suspension_mountain_bike'
require 'forwardable'

class MountainBike
 TIRE_WIDTH_FACTOR = 0.5 
 FRONT_SUSPENSION_FACTOR = 0.5 
 REAR_SUSPENSION_FACTOR = 0.5 
 
 extend Forwardable
 def_delegators :@bike_type, :off_road_ability, :price

 attr_reader :type_code

 def initialize(bike_type)
  #set_state_from_hash(params)
  @bike_type = bike_type
 end

 def type_code=(value)
  @type_code = value
  @bike_type = case type_code
   when :rigid then RigidMountainBike.new( 
    :tire_width => @tire_width, :base_price => @base_price, :commission => @commission )
   when :front_suspension then FrontSuspensionMountainBike.new( 
    :tire_width => @tire_width, :base_price => @base_price, :commission => @commission, 
    :front_fork_travel => @front_fork_travel, :front_suspension_price => @front_suspension_price )
   when :full_suspension then FullSuspensionMountainBike.new( 
    :tire_width => @tire_width, :base_price => @base_price, :commission => @commission, 
    :front_fork_travel => @front_fork_travel, :front_suspension_price => @front_suspension_price, 
    :rear_fork_travel => @rear_fork_travel, :rear_suspension_price => @rear_suspension_price )
  end
 end

 def add_front_suspension(params)
  @bike_type = FrontSuspensionMountainBike.new({ 
   :tire_width => @tire_width, 
   :base_price => @base_price, 
   :commission => @commission
  }.merge(params) )
 end

 def add_rear_suspension(params)
  unless @bike_type.is_a?(FrontSuspensionMountainBike)
   raise 'you cant add rear suspension unless you have front suspension'
  end
  @bike_type = FullSuspensionMountainBike.new( 
   {:tire_width => @tire_width, :base_price => @base_price, :commission => @commission, 
    :front_suspension_price => @front_suspension_price, :front_fork_travel => @front_fork_travel }.merge(params) )
 end

 def to_s
  %Q{
   Bike Type: #{@bike_type.inspect}
   Base Price: #{@base_price}
   Commission: #{@commission}
  }
 end

end
