require "spec_helper"

describe UsersController do
  describe "routing" do

    it "routes to #index" do
      get("/transports/x/users").should route_to("users#index", :transport_id => 'x')
    end

    it "routes to #new" do
      get("/transports/x/users/new").should route_to("users#new", :transport_id => 'x')
    end

    it "routes to #show" do
      get("/transports/x/users/1").should route_to("users#show", :id => "1", :transport_id => 'x')
    end

    it "routes to #edit" do
      get("/transports/x/users/1/edit").should route_to("users#edit", :id => "1", :transport_id => 'x')
    end

    it "routes to #create" do
      post("/transports/x/users").should route_to("users#create", :transport_id => 'x')
    end

    it "routes to #update" do
      put("/transports/x/users/1").should route_to("users#update", :id => "1", :transport_id => 'x')
    end

    it "routes to #destroy" do
      delete("/transports/x/users/1").should route_to("users#destroy", :id => "1", :transport_id => 'x')
    end

  end
end
