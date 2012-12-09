require 'spec_helper'
#require 'world'

describe "MountainBike" do
 #include World

 describe "basic bike" do
  let(:basic_bike) { FactoryGirl.build(:basic_bike) }
  it "xxx" do
   pending
   puts "---> xxx 1: #{basic_bike.inspect}"
   puts "---> xxx 2: #{basic_bike.class}"
   puts "---> xxx 3: #{basic_bike.methods.grep(/^add/).inspect}"
   #basic_bike.bike_type.should be_true
  end
  it { basic_bike.instance_variable_get(:@base_price) }
  it { basic_bike.instance_variable_get(:@front_suspension_price) }
  it { basic_bike.instance_variable_get(:@rear_suspension_price) }
  it { basic_bike.instance_variable_get(:@commission) }
  it { basic_bike.instance_variable_get(:@type_code) }
  it { basic_bike.instance_variable_get(:@bike_type) }
  it "sss" do 
   #puts "---> sss 1"
   #puts "---> sss 2: #{basic_bike.inspect}"
   basic_bike.price.should == 2100 
   #puts "---> sss 10"
  end
  it "off road ability" do 
   basic_bike.off_road_ability.should == 0.75 
  end
  describe "upgrade with front suspension" do
   ##before { basic_bike.add_front_suspension( { type_code: :front_suspension, front_suspension_price: 100, front_fork_travel: 2 } ) }
   #before { basic_bike.add_front_suspension( { basic_price: 500, tire_width: 1.5, commission: 0.05, front_suspension_price: 100, front_fork_travel: 2 } ) }
   it "zzz" do
    puts "---> zzz 1: #{basic_bike.inspect}"
    #basic_bike.add_front_suspension( { front_suspension_price: 100, front_fork_travel: 2 } ) 
    basic_bike.add_front_suspension( { base_price: 2000, tire_width: 1.5, commission: 0.05, front_suspension_price: 100, front_fork_travel: 2 } ) 
    puts "---> zzz 2: #{basic_bike.inspect}"
    puts "---> zzz 3: #{basic_bike.off_road_ability}"
    puts "---> zzz 4: #{basic_bike.instance_variables}"
    basic_bike.price.should == 2200 
   end
   #it { basic_bike.price.should == 2200 }
   #it { basic_bike.off_road_ability.should == 1.75 }
  end
  describe "upgrade with rear suspension" do
   it "returns 'cant add rear sus without front sus' error message" do
    expect {
     basic_bike.add_rear_suspension( { type_code: :rear_suspension, rear_suspension_price: 300, rear_suspension_travel: 5 } )
    }.to raise_error(RuntimeError)
   end
  end
 end



=begin
 describe "front suspension bike" do
  let(:front_suspension_bike) { FactoryGirl.build(:front_suspension_bike) }
  it { front_suspension_bike.instance_variable_get(:@base_price) }
  it { front_suspension_bike.instance_variable_get(:@front_suspension_price) }
  it { front_suspension_bike.instance_variable_get(:@rear_suspension_price) }
  it { front_suspension_bike.instance_variable_get(:@commission) }
  it { front_suspension_bike.instance_variable_get(:@type_code) }
  it { front_suspension_bike.instance_variable_get(:@bike_type) }
  it { front_suspension_bike.price.should == 2250 }
  it { front_suspension_bike.off_road_ability.should == 3 }
  describe "upgrade with rear suspension" do
   before { front_suspension_bike.add_rear_suspension( { rear_suspension_price: 200, rear_fork_travel: 3 } ) }
   it { front_suspension_bike.price.should == 2650 }
   it { front_suspension_bike.off_road_ability.should == 4.5 }
  end
 end
 describe "full suspension bike" do
  let(:full_suspension_bike) { FactoryGirl.build(:full_suspension_bike) }
  it { full_suspension_bike.instance_variable_get(:@base_price) }
  it { full_suspension_bike.instance_variable_get(:@front_suspension_price) }
  it { full_suspension_bike.instance_variable_get(:@rear_suspension_price) }
  it { full_suspension_bike.instance_variable_get(:@commission) }
  it { full_suspension_bike.instance_variable_get(:@type_code) }
  it { full_suspension_bike.instance_variable_get(:@bike_type) }
 end
=end

end
