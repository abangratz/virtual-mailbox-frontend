require 'spec_helper'

describe "Transports" do
  describe "GET /transports" do
    it "should work when logged in" do
      admin = Factory(:mail_admin)
      post_via_redirect mail_admin_session_path, 'mail_admin[email]' => admin.email, 'mail_admin[password]' => admin.password
      get transports_path
      response.status.should be(200)
    end
    it "should redirect when not logged in" do
      get transports_path
      response.status.should be(302)
    end
  end
end
