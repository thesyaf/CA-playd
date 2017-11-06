require 'rails_helper'

RSpec.describe "wantedgames/index", type: :view do
  before(:each) do
    assign(:wantedgames, [
      Wantedgame.create!(
        :game_api_id => "Game Api",
        :game_name => "Game Name",
        :game_image => "Game Image",
        :game_owned => "Game Owned",
        :user => nil
      ),
      Wantedgame.create!(
        :game_api_id => "Game Api",
        :game_name => "Game Name",
        :game_image => "Game Image",
        :game_owned => "Game Owned",
        :user => nil
      )
    ])
  end

  it "renders a list of wantedgames" do
    render
    assert_select "tr>td", :text => "Game Api".to_s, :count => 2
    assert_select "tr>td", :text => "Game Name".to_s, :count => 2
    assert_select "tr>td", :text => "Game Image".to_s, :count => 2
    assert_select "tr>td", :text => "Game Owned".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
