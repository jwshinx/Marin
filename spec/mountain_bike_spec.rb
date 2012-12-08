require 'spec_helper'
#require 'world'

describe "MountainBike" do
 #include World

 describe "basic bike" do
  let(:basic_bike) { FactoryGirl.build(:basic_bike) }
  it { basic_bike.instance_variable_get(:@base_price) }
  it { basic_bike.instance_variable_get(:@front_suspension_price) }
  it { basic_bike.instance_variable_get(:@rear_suspension_price) }
  it { basic_bike.instance_variable_get(:@commission) }
  it { basic_bike.instance_variable_get(:@type_code) }
  it { basic_bike.price.should == 505 }
  it { basic_bike.off_road_ability.should == 0.75 }
  describe "upgrade with front suspension" do
   #before { basic_bike.add_front_suspension( { type_code: :front_suspension, front_suspension_price: 100, front_fork_travel: 2 } ) }
   before { basic_bike.add_front_suspension( { front_suspension_price: 100, front_fork_travel: 2 } ) }
   it { basic_bike.price.should == 605 }
   it { basic_bike.off_road_ability.should == 1.75 }
  end
  describe "upgrade with rear suspension" do
   it "returns 'cant add rear sus without front sus' error message" do
    expect {
     basic_bike.add_rear_suspension( { type_code: :rear_suspension, rear_suspension_price: 300, rear_suspension_travel: 5 } )
    }.to raise_error(RuntimeError)
   end
  end
 end
 describe "front suspension bike" do
  let(:front_suspension_bike) { FactoryGirl.build(:front_suspension_bike) }
  it { front_suspension_bike.instance_variable_get(:@base_price) }
  it { front_suspension_bike.instance_variable_get(:@front_suspension_price) }
  it { front_suspension_bike.instance_variable_get(:@rear_suspension_price) }
  it { front_suspension_bike.instance_variable_get(:@commission) }
  it { front_suspension_bike.instance_variable_get(:@type_code) }
  it { front_suspension_bike.price.should == 2450 }
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
 end
end
