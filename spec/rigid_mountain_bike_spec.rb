require 'spec_helper'

describe "RigidMountainBike" do

 describe "rigid bike" do
  let(:rigid_bike) { FactoryGirl.build(:rigid_bike) }
  it "xxx" do
   puts "---> xxx: #{rigid_bike.inspect}"
  end
  it { rigid_bike.instance_variable_get(:@tire_width) }
  it { rigid_bike.off_road_ability.should == 0.75 }
  #it { basic_bike.price.should == 505 }
  #it { basic_bike.off_road_ability.should == 0.75 }
 end
end
