require 'spec_helper'

describe Virtual do
  context "associations" do
    it "should belong to a user" do
      user = User.new
      virtual = Virtual.new
      lambda { virtual.user = user }.should_not raise_error
    end
  end
end
