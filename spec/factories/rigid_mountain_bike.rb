FactoryGirl.define do
 factory :rigid_bike, class: RigidMountainBike do
  initialize_with do 
   new( { tire_width: 1.5, base_price: 400, commission: 0.01 } ) 
  end
 end
end
