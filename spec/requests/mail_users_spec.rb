require 'spec_helper'

describe "Users" do
  describe "GET /transports/x/mail_users" do
    it "works! (now write some real specs)" do
      transport = mock_model(Transport, :domain => 'x', :users => [])
      Transport.stub(:get).and_return(transport)
      get transport_mail_users_path(:transport_id => 'x')
      response.status.should be(200)
    end
  end
end
