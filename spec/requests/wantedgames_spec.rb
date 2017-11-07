require 'rails_helper'

RSpec.describe "Wantedgames", type: :request do
  describe "GET /wantedgames" do
    it "works! (now write some real specs)" do
      get wantedgames_path
      expect(response).to have_http_status(200)
    end
  end
end
