require 'spec_helper'
#require 'world'

describe "MountainBike" do
 #include World

 describe "normally" do
  let(:basic_bike) { FactoryGirl.build(:basic_bike) }
  #subject { bike }
  it "slls" do
   puts "---> basic_bike: #{basic_bike.inspect}"
  end
  it { basic_bike.instance_variable_get(:@base_price) }
  it { basic_bike.instance_variable_get(:@front_suspension_price) }
  it { basic_bike.instance_variable_get(:@rear_suspension_price) }
  it { basic_bike.instance_variable_get(:@commission) }
  it { basic_bike.instance_variable_get(:@type_code) }
  it { basic_bike.price.should == 505 }
  it { basic_bike.off_road_ability.should == 0.75 }

 end
end
