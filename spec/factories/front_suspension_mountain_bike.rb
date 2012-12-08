FactoryGirl.define do
 factory :real_front_suspension_bike, class: FrontSuspensionMountainBike do
  initialize_with do 
   new( { tire_width: 1.5, front_fork_travel: 4 } ) 
  end
 end
end
