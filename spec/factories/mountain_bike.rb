FactoryGirl.define do
 factory :basic_bike, class: MountainBike do
  initialize_with do 
   MountainBike.new(RigidMountainBike.new( tire_width: 1.5, base_price: 2000, commission: 0.05 ))
  end
 end
 factory :front_suspension_bike, class: MountainBike do
  initialize_with do 
   FrontSuspensionMountainBike.new( tire_width: 1.5, base_price: 2000, commission: 0.05, 
                                    front_suspension_price: 150, front_suspension_travel: 4 )
  end
 end
 factory :full_suspension_bike, class: MountainBike do
  initialize_with do 
   FullSuspensionMountainBike.new( tire_width: 1.5, base_price: 2000, commission: 0.05, 
                                   front_suspension_price: 150, front_suspension_travel: 4, 
                                   rear_suspension_price: 200, rear_suspension_travel: 6 )
  end
 end
end
