require "rails_helper"

RSpec.describe TestcasesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/testcases").to route_to("testcases#index")
    end

    it "routes to #new" do
      expect(:get => "/testcases/new").to route_to("testcases#new")
    end

    it "routes to #show" do
      expect(:get => "/testcases/1").to route_to("testcases#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/testcases/1/edit").to route_to("testcases#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/testcases").to route_to("testcases#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/testcases/1").to route_to("testcases#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/testcases/1").to route_to("testcases#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/testcases/1").to route_to("testcases#destroy", :id => "1")
    end

  end
end
