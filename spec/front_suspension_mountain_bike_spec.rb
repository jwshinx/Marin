require 'spec_helper'

describe "FrontSuspensionMountainBike" do

 describe "front suspension bike" do
  let(:front_suspension_bike) { FactoryGirl.build(:real_front_suspension_bike) }
  it "xxx" do
   pending
   puts "---> xxx: #{front_suspension_bike.inspect}"
  end
  it { front_suspension_bike.off_road_ability.should == 2.75 }
  it { front_suspension_bike.price.should == 675 }
 end
end
