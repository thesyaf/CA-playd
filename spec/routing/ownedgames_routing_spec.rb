require "rails_helper"

RSpec.describe OwnedgamesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ownedgames").to route_to("ownedgames#index")
    end

    it "routes to #new" do
      expect(:get => "/ownedgames/new").to route_to("ownedgames#new")
    end

    it "routes to #show" do
      expect(:get => "/ownedgames/1").to route_to("ownedgames#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ownedgames/1/edit").to route_to("ownedgames#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/ownedgames").to route_to("ownedgames#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/ownedgames/1").to route_to("ownedgames#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/ownedgames/1").to route_to("ownedgames#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ownedgames/1").to route_to("ownedgames#destroy", :id => "1")
    end

  end
end
