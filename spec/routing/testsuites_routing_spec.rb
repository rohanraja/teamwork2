require "rails_helper"

RSpec.describe TestsuitesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/testsuites").to route_to("testsuites#index")
    end

    it "routes to #new" do
      expect(:get => "/testsuites/new").to route_to("testsuites#new")
    end

    it "routes to #show" do
      expect(:get => "/testsuites/1").to route_to("testsuites#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/testsuites/1/edit").to route_to("testsuites#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/testsuites").to route_to("testsuites#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/testsuites/1").to route_to("testsuites#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/testsuites/1").to route_to("testsuites#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/testsuites/1").to route_to("testsuites#destroy", :id => "1")
    end

  end
end
