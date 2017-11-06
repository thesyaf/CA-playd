require 'rails_helper'

RSpec.describe "ownedgames/edit", type: :view do
  before(:each) do
    @ownedgame = assign(:ownedgame, Ownedgame.create!(
      :game_api_id => "MyString",
      :game_name => "MyString",
      :game_image => "MyString",
      :game_owned => "MyString"
    ))
  end

  it "renders the edit ownedgame form" do
    render

    assert_select "form[action=?][method=?]", ownedgame_path(@ownedgame), "post" do

      assert_select "input[name=?]", "ownedgame[game_api_id]"

      assert_select "input[name=?]", "ownedgame[game_name]"

      assert_select "input[name=?]", "ownedgame[game_image]"

      assert_select "input[name=?]", "ownedgame[game_owned]"
    end
  end
end
