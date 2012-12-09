class RigidMountainBike
 #attr_reader :base_price, :tire_width, :commission

 def initialize(params)
  @tire_width = params[:tire_width]
  @base_price = params[:base_price]
  @commission = params[:commission]
 end

 def off_road_ability
  @tire_width * MountainBike::TIRE_WIDTH_FACTOR
 end

 def price
  (1 + @commission) * @base_price 
 end

 def upgradable_parameters
  {
   :tire_width => @tire_width,
   :base_price => @base_price,
   :commission => @commission
  }
 end
end
