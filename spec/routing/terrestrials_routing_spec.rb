require "spec_helper"

describe TerrestrialsController do
  describe "routing" do

    it "routes to #index" do
      get("/terrestrials").should route_to("terrestrials#index")
    end

    it "routes to #new" do
      get("/terrestrials/new").should route_to("terrestrials#new")
    end

    it "routes to #show" do
      get("/terrestrials/1").should route_to("terrestrials#show", :id => "1")
    end

    it "routes to #edit" do
      get("/terrestrials/1/edit").should route_to("terrestrials#edit", :id => "1")
    end

    it "routes to #create" do
      post("/terrestrials").should route_to("terrestrials#create")
    end

    it "routes to #update" do
      put("/terrestrials/1").should route_to("terrestrials#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/terrestrials/1").should route_to("terrestrials#destroy", :id => "1")
    end

  end
end
