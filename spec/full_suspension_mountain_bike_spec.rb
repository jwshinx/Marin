require 'spec_helper'

describe "FullSuspensionMountainBike" do

 describe "full suspension bike" do
  let(:full_suspension_bike) { FactoryGirl.build(:real_full_suspension_bike) }
  it "xxx" do
   pending
   puts "---> xxx: #{full_suspension_bike.inspect}"
  end
  it { full_suspension_bike.off_road_ability.should == 5.75 }
  it { full_suspension_bike.price.should == 2050 }
 end
end
