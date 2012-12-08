require 'spec_helper'

describe "FrontSuspensionMountainBike" do

 describe "front suspension bike" do
  let(:front_suspension_bike) { FactoryGirl.build(:real_front_suspension_bike) }
  it "xxx" do
   puts "---> xxx: #{front_suspension_bike.inspect}"
  end
  it { front_suspension_bike.off_road_ability.should == 2.75 }
  #it { basic_bike.price.should == 505 }
  #it { basic_bike.off_road_ability.should == 0.75 }
 end
end
