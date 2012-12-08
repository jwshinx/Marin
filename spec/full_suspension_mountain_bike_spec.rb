require 'spec_helper'

describe "FullSuspensionMountainBike" do

 describe "full suspension bike" do
  let(:full_suspension_bike) { FactoryGirl.build(:real_full_suspension_bike) }
  it "xxx" do
   puts "---> xxx: #{full_suspension_bike.inspect}"
  end
  it { full_suspension_bike.off_road_ability.should == 5.75 }
  #it { basic_bike.price.should == 505 }
  #it { basic_bike.off_road_ability.should == 0.75 }
 end
end
