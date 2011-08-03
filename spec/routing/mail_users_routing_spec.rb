require "spec_helper"

describe MailUsersController do
  describe "routing" do

    it "routes to #index" do
      get("/transports/x/mail_users").should route_to("mail_users#index", :transport_id => 'x')
    end

    it "routes to #new" do
      get("/transports/x/mail_users/new").should route_to("mail_users#new", :transport_id => 'x')
    end

    it "routes to #show" do
      get("/transports/x/mail_users/1").should route_to("mail_users#show", :id => "1", :transport_id => 'x')
    end

    it "routes to #edit" do
      get("/transports/x/mail_users/1/edit").should route_to("mail_users#edit", :id => "1", :transport_id => 'x')
    end

    it "routes to #create" do
      post("/transports/x/mail_users").should route_to("mail_users#create", :transport_id => 'x')
    end

    it "routes to #update" do
      put("/transports/x/mail_users/1").should route_to("mail_users#update", :id => "1", :transport_id => 'x')
    end

    it "routes to #destroy" do
      delete("/transports/x/mail_users/1").should route_to("mail_users#destroy", :id => "1", :transport_id => 'x')
    end

  end
end
