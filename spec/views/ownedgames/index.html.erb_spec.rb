require 'rails_helper'

RSpec.describe "ownedgames/index", type: :view do
  before(:each) do
    assign(:ownedgames, [
      Ownedgame.create!(
        :game_api_id => "Game Api",
        :game_name => "Game Name",
        :game_image => "Game Image",
        :game_owned => "Game Owned"
      ),
      Ownedgame.create!(
        :game_api_id => "Game Api",
        :game_name => "Game Name",
        :game_image => "Game Image",
        :game_owned => "Game Owned"
      )
    ])
  end

  it "renders a list of ownedgames" do
    render
    assert_select "tr>td", :text => "Game Api".to_s, :count => 2
    assert_select "tr>td", :text => "Game Name".to_s, :count => 2
    assert_select "tr>td", :text => "Game Image".to_s, :count => 2
    assert_select "tr>td", :text => "Game Owned".to_s, :count => 2
  end
end
