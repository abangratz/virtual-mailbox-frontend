require "spec_helper"

describe TransportsController do
  describe "routing" do

    it "routes to #index" do
      get("/transports").should route_to("transports#index")
    end

    it "routes to #new" do
      get("/transports/new").should route_to("transports#new")
    end

    it "routes to #show" do
      get("/transports/1").should route_to("transports#show", :id => "1")
    end

    it "routes to #edit" do
      get("/transports/1/edit").should route_to("transports#edit", :id => "1")
    end

    it "routes to #create" do
      post("/transports").should route_to("transports#create")
    end

    it "routes to #update" do
      put("/transports/1").should route_to("transports#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/transports/1").should route_to("transports#destroy", :id => "1")
    end

  end
end
