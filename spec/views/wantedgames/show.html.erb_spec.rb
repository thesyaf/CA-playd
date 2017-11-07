require 'rails_helper'

RSpec.describe "wantedgames/show", type: :view do
  before(:each) do
    @wantedgame = assign(:wantedgame, Wantedgame.create!(
      :game_api_id => "Game Api",
      :game_name => "Game Name",
      :game_image => "Game Image",
      :game_owned => "Game Owned",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Game Api/)
    expect(rendered).to match(/Game Name/)
    expect(rendered).to match(/Game Image/)
    expect(rendered).to match(/Game Owned/)
    expect(rendered).to match(//)
  end
end
