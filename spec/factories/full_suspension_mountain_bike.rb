FactoryGirl.define do
 factory :real_full_suspension_bike, class: FullSuspensionMountainBike do
  initialize_with do 
   new( { tire_width: 1.5, base_price: 1500, commission: 0.1, front_fork_travel: 4, rear_fork_travel: 6, 
          front_suspension_price: 150, rear_suspension_price: 250 } ) 
  end
 end
end
