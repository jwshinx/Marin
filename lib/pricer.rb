module Pricer
 def with_commission_factor 
  (1 + @commission)
 end
 def basic_parameters
  {
   :tire_width => @tire_width,
   :base_price => @base_price,
   :commission => @commission
  }
 end


=begin
 def price
  if self.class == FrontSuspensionMountainBike
   (1 + @commission) * @base_price + @front_suspension_price
  else
  end
 end
=end

end
