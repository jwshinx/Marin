class RigidMountainBike

 def initialize(params)
  @tire_width = params[:tire_width]
  @base_price = params[:base_price]
  @commission = params[:commission]
 end

 def off_road_ability
  @tire_width * MountainBike::TIRE_WIDTH_FACTOR
 end

 def price
  puts "---> from RMB.price: #{self.inspect}"
  (1 + @commission) * @base_price 
 end
end
