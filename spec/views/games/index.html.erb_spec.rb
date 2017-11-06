require 'rails_helper'

RSpec.describe "games/index", type: :view do
  before(:each) do
    assign(:games, [
      Game.create!(
        :api_game_id => "MyText",
        :name => "Name",
        :image => "MyText",
        :platform => "MyText"
      ),
      Game.create!(
        :api_game_id => "MyText",
        :name => "Name",
        :image => "MyText",
        :platform => "MyText"
      )
    ])
  end

  it "renders a list of games" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
