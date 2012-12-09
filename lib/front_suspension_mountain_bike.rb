require 'pricer'

class FrontSuspensionMountainBike
 include Pricer

 def initialize(params)
  @tire_width = params[:tire_width]
  @base_price = params[:base_price]
  @commission= params[:commission]
  @front_fork_travel = params[:front_fork_travel]
  @front_suspension_price = params[:front_suspension_price]
 end

 def off_road_ability
  (@tire_width * MountainBike::TIRE_WIDTH_FACTOR) + (@front_fork_travel * MountainBike::FRONT_SUSPENSION_FACTOR)
 end

 def price
  with_commission_factor * @base_price + @front_suspension_price
 end
 
 def upgradable_parameters
  {
   :front_fork_travel => @front_fork_travel,
   :front_suspension_price => @front_suspension_price
  }.merge(basic_parameters)
 end
end
