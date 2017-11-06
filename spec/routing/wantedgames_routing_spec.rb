require "rails_helper"

RSpec.describe WantedgamesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/wantedgames").to route_to("wantedgames#index")
    end

    it "routes to #new" do
      expect(:get => "/wantedgames/new").to route_to("wantedgames#new")
    end

    it "routes to #show" do
      expect(:get => "/wantedgames/1").to route_to("wantedgames#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/wantedgames/1/edit").to route_to("wantedgames#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/wantedgames").to route_to("wantedgames#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/wantedgames/1").to route_to("wantedgames#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/wantedgames/1").to route_to("wantedgames#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/wantedgames/1").to route_to("wantedgames#destroy", :id => "1")
    end

  end
end
