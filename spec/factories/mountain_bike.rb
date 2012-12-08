FactoryGirl.define do
 factory :basic_bike, class: MountainBike do
  initialize_with do 
   new( 
    #{ base_price: 2000, front_suspension_price: 150, rear_suspension_price: 200, commission: 0.05, tire_width: 1.5, front_fork_travel: 4, rear_fork_travel: 5, type_code: :full_suspension }
    { base_price: 500, commission: 0.01, tire_width: 1.5, type_code: :rigid }
   ) 
  end
 end
end
