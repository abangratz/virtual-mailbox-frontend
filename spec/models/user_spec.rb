require 'spec_helper'

describe User do
  context "associations" do
    it "should belong to transport" do
      transport = Transport.new
      user = User.new
      lambda { User.transport == transport }.should_not raise_error
    end
    it "should have many virtuals" do
      lambda { 
        user = User.new
        virtual = user.virtuals.new 
      }.should_not raise_error
    end
  end
end
