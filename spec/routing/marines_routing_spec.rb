require "spec_helper"

describe MarinesController do
  describe "routing" do

    it "routes to #index" do
      get("/marines").should route_to("marines#index")
    end

    it "routes to #new" do
      get("/marines/new").should route_to("marines#new")
    end

    it "routes to #show" do
      get("/marines/1").should route_to("marines#show", :id => "1")
    end

    it "routes to #edit" do
      get("/marines/1/edit").should route_to("marines#edit", :id => "1")
    end

    it "routes to #create" do
      post("/marines").should route_to("marines#create")
    end

    it "routes to #update" do
      put("/marines/1").should route_to("marines#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/marines/1").should route_to("marines#destroy", :id => "1")
    end

  end
end
