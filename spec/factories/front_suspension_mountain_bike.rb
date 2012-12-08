FactoryGirl.define do
 factory :real_front_suspension_bike, class: FrontSuspensionMountainBike do
  initialize_with do 
   new( { tire_width: 1.5, front_fork_travel: 4, base_price: 500, commission: 0.05, front_suspension_price: 150 } ) 
  end
 end
end
