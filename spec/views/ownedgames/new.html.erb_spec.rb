require 'rails_helper'

RSpec.describe "ownedgames/new", type: :view do
  before(:each) do
    assign(:ownedgame, Ownedgame.new(
      :game_api_id => "MyString",
      :game_name => "MyString",
      :game_image => "MyString",
      :game_owned => "MyString"
    ))
  end

  it "renders new ownedgame form" do
    render

    assert_select "form[action=?][method=?]", ownedgames_path, "post" do

      assert_select "input[name=?]", "ownedgame[game_api_id]"

      assert_select "input[name=?]", "ownedgame[game_name]"

      assert_select "input[name=?]", "ownedgame[game_image]"

      assert_select "input[name=?]", "ownedgame[game_owned]"
    end
  end
end
