require 'spec_helper'

describe Transport do
  context "associations" do
    it "should have many users" do
      transport = Transport.new
      lambda {
        user = transport.users.new
      }.should_not raise_error
    end
  end
end
