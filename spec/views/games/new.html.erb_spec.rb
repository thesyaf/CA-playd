require 'rails_helper'

RSpec.describe "games/new", type: :view do
  before(:each) do
    assign(:game, Game.new(
      :api_game_id => "MyText",
      :name => "MyString",
      :image => "MyText",
      :platform => "MyText"
    ))
  end

  it "renders new game form" do
    render

    assert_select "form[action=?][method=?]", games_path, "post" do

      assert_select "textarea[name=?]", "game[api_game_id]"

      assert_select "input[name=?]", "game[name]"

      assert_select "textarea[name=?]", "game[image]"

      assert_select "textarea[name=?]", "game[platform]"
    end
  end
end
