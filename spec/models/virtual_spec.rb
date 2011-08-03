require 'spec_helper'

describe Virtual do
  context "associations" do
    it "should belong to a user" do
      user = User.new
      virtual = Virtual.new
      lambda { virtual.user = user }.should_not raise_error
    end
  end
  it "should return its address as param, '.' cgi escaped (including the '.')" do
    virtual = Virtual.new(:address => 'test@test.com')
    virtual.to_param.should == 'test%40test%2ecom'
  end
end
