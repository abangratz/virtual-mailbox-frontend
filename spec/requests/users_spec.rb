require 'spec_helper'

describe "Users" do
  describe "GET /transports/x/users" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get transport_users_path(:transport_id => 'x')
      response.status.should be(200)
    end
  end
end
