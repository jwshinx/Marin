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

 #def initialize(params)
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
  puts "---> MB.add_front_sus 0: #{self.inspect}"
  #puts "---> MB.add_front_sus 1: #{params.inspect}"
  puts "---> MB.add_front_sus 2: #{@bike_type.inspect}"
  puts "--->         #{@base_price} - #{@tire_width} - #{@commission}"
  #self.type_code = :front_suspension
  @bike_type = FrontSuspensionMountainBike.new({ 
   :tire_width => @tire_width, 
   :base_price => @base_price, 
   :commission => @commission
  }.merge(params) )
  puts "---> MB.add_front_sus 3: #{@bike_type.inspect}"
  @bike_type
  #set_state_from_hash(params)
 end

 def add_rear_suspension(params)
  #unless type_code == :front_suspension
  unless @bike_type.is_a?(FrontSuspensionMountainBike)
   raise 'you cant add rear suspension unless you have front suspension'
  end
  #self.type_code = :full_suspension
  @bike_type = FullSuspensionMountainBike.new( 
   {:tire_width => @tire_width, :base_price => @base_price, :commission => @commission, 
    :front_suspension_price => @front_suspension_price, :front_fork_travel => @front_fork_travel }.merge(params) )
  #set_state_from_hash(params)
 end

=begin
 def off_road_ability
  return @bike_type.off_road_ability if type_code == :rigid
  return @bike_type.off_road_ability if type_code == :front_suspension
  return @bike_type.off_road_ability if type_code == :full_suspension
  result = @tire_width * TIRE_WIDTH_FACTOR
  if type_code == :front_suspension || type_code == :full_suspension
   result += @front_fork_travel * FRONT_SUSPENSION_FACTOR
  end
  if type_code == :full_suspension
   result += @rear_fork_travel * REAR_SUSPENSION_FACTOR
  end
  result
 end
=end

=begin
 def price
  case type_code
   when :rigid
    @bike_type.price
   when :front_suspension
    #(1 + @commission) * @base_price + @front_suspension_price
    @bike_type.price
   when :full_suspension
    #(1 + @commission) * @base_price + @front_suspension_price + @rear_suspension_price
    @bike_type.price
  end
 end
=end

 def to_s
  %Q{
   Bike Type: #{@bike_type.inspect}
   Base Price: #{@base_price}
   Commission: #{@commission}
  }
   #Tire Width: #{@tire_width}
  # Front Sus: #{@bike_type.front_suspension_price} - #{@bike_type.front_fork_travel}
  # Rear Sus: #{@bike_type.rear_suspension_price} - #{@bike_type.rear_fork_travel}
 end
private

=begin
 def set_state_from_hash(hash)
  @base_price = hash[:base_price] if hash.has_key? :base_price
  if hash.has_key? :front_suspension_price
   @front_suspension_price = hash[:front_suspension_price]
  end
  if hash.has_key? :rear_suspension_price
   @rear_suspension_price = hash[:rear_suspension_price]
  end
  if hash.has_key? :commission
   @commission = hash[:commission]
  end
  if hash.has_key? :tire_width
   @tire_width = hash[:tire_width]
  end
  if hash.has_key? :front_fork_travel
   @front_fork_travel = hash[:front_fork_travel]
  end
  if hash.has_key? :rear_fork_travel
   @rear_fork_travel = hash[:rear_fork_travel]
  end
  self.type_code = hash[:type_code] if hash.has_key?(:type_code)
 end
=end

end
