require 'rails_helper'

RSpec.describe "wantedgames/edit", type: :view do
  before(:each) do
    @wantedgame = assign(:wantedgame, Wantedgame.create!(
      :game_api_id => "MyString",
      :game_name => "MyString",
      :game_image => "MyString",
      :game_owned => "MyString",
      :user => nil
    ))
  end

  it "renders the edit wantedgame form" do
    render

    assert_select "form[action=?][method=?]", wantedgame_path(@wantedgame), "post" do

      assert_select "input[name=?]", "wantedgame[game_api_id]"

      assert_select "input[name=?]", "wantedgame[game_name]"

      assert_select "input[name=?]", "wantedgame[game_image]"

      assert_select "input[name=?]", "wantedgame[game_owned]"

      assert_select "input[name=?]", "wantedgame[user_id]"
    end
  end
end
