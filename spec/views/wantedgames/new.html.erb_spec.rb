require 'rails_helper'

RSpec.describe "wantedgames/new", type: :view do
  before(:each) do
    assign(:wantedgame, Wantedgame.new(
      :game_api_id => "MyString",
      :game_name => "MyString",
      :game_image => "MyString",
      :game_owned => "MyString",
      :user => nil
    ))
  end

  it "renders new wantedgame form" do
    render

    assert_select "form[action=?][method=?]", wantedgames_path, "post" do

      assert_select "input[name=?]", "wantedgame[game_api_id]"

      assert_select "input[name=?]", "wantedgame[game_name]"

      assert_select "input[name=?]", "wantedgame[game_image]"

      assert_select "input[name=?]", "wantedgame[game_owned]"

      assert_select "input[name=?]", "wantedgame[user_id]"
    end
  end
end
