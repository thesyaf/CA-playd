require 'rails_helper'

RSpec.describe "trades/new", type: :view do
  before(:each) do
    assign(:trade, Trade.new(
      :ownedgame => nil,
      :wantedgame => nil
    ))
  end

  it "renders new trade form" do
    render

    assert_select "form[action=?][method=?]", trades_path, "post" do

      assert_select "input[name=?]", "trade[ownedgame_id]"

      assert_select "input[name=?]", "trade[wantedgame_id]"
    end
  end
end
