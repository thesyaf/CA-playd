require 'rails_helper'

RSpec.describe "games/edit", type: :view do
  before(:each) do
    @game = assign(:game, Game.create!(
      :api_game_id => "MyText",
      :name => "MyString",
      :image => "MyText",
      :platform => "MyText"
    ))
  end

  it "renders the edit game form" do
    render

    assert_select "form[action=?][method=?]", game_path(@game), "post" do

      assert_select "textarea[name=?]", "game[api_game_id]"

      assert_select "input[name=?]", "game[name]"

      assert_select "textarea[name=?]", "game[image]"

      assert_select "textarea[name=?]", "game[platform]"
    end
  end
end
