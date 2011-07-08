require "spec_helper"

describe VirtualsController do
  describe "routing" do

    it "routes to #index" do
      get("/virtuals").should route_to("virtuals#index")
    end

    it "routes to #new" do
      get("/virtuals/new").should route_to("virtuals#new")
    end

    it "routes to #show" do
      get("/virtuals/1").should route_to("virtuals#show", :id => "1")
    end

    it "routes to #edit" do
      get("/virtuals/1/edit").should route_to("virtuals#edit", :id => "1")
    end

    it "routes to #create" do
      post("/virtuals").should route_to("virtuals#create")
    end

    it "routes to #update" do
      put("/virtuals/1").should route_to("virtuals#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/virtuals/1").should route_to("virtuals#destroy", :id => "1")
    end

  end
end
