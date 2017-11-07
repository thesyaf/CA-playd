require 'rails_helper'

RSpec.describe "Ownedgames", type: :request do
  describe "GET /ownedgames" do
    it "works! (now write some real specs)" do
      get ownedgames_path
      expect(response).to have_http_status(200)
    end
  end
end
