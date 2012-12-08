FactoryGirl.define do
 factory :rigid_bike, class: RigidMountainBike do
  initialize_with do 
   new( { tire_width: 1.5 } ) 
  end
 end
end
