FactoryGirl.define do
 factory :real_full_suspension_bike, class: FullSuspensionMountainBike do
  initialize_with do 
   new( { tire_width: 1.5, front_fork_travel: 4, rear_fork_travel: 6 } ) 
  end
 end
end
