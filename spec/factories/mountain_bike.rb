FactoryGirl.define do
 factory :basic_bike, class: MountainBike do
  initialize_with do 
   #FactoryGirl.build(:rigid_bike)
    MountainBike.new(RigidMountainBike.new( tire_width: 1.5, base_price: 2000, commission: 0.05 ))
    #MountainBike.new({ tire_width: 1.5, base_price: 2000, commission: 0.05 })
    #{ base_price: 500, commission: 0.01, tire_width: 1.5, type_code: :rigid }
  end
=begin
  initialize_with do 
   new( 
    #{ base_price: 2000, front_suspension_price: 150, rear_suspension_price: 200, commission: 0.05, 
    #  tire_width: 1.5, front_fork_travel: 4, rear_fork_travel: 5, type_code: :full_suspension }
    #{ base_price: 500, commission: 0.01, tire_width: 1.5, type_code: :rigid }
    RigidMountainBike.new(
     tire_width: 1.5,
     base_price: 2000,
     commission: 0.05
    )
   ) 
  end
=end
 end
 factory :front_suspension_bike, class: MountainBike do
  initialize_with do 
   FrontSuspensionMountainBike.new( tire_width: 1.5, base_price: 2000, commission: 0.05, 
                                    front_suspension_price: 150, front_suspension_travel: 4 )
=begin
   new( 
    { base_price: 2000, front_suspension_price: 150, commission: 0.15, 
      tire_width: 2, front_fork_travel: 4, type_code: :front_suspension }
   ) 
=end
  end
 end
 factory :full_suspension_bike, class: MountainBike do
  initialize_with do 
   FullSuspensionMountainBike.new( tire_width: 1.5, base_price: 2000, commission: 0.05, 
                                   front_suspension_price: 150, front_suspension_travel: 4, 
                                   rear_suspension_price: 200, rear_suspension_travel: 6 )
=begin
   new( 
    { base_price: 2000, front_suspension_price: 150, rear_suspension_price: 200, commission: 0.25, 
      tire_width: 2, front_fork_travel: 4, rear_fork_travel: 5, type_code: :full_suspension }
   ) 
=end
  end
 end
end
