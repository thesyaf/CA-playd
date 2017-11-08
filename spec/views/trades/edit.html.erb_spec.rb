require 'rails_helper'

RSpec.describe "trades/edit", type: :view do
  before(:each) do
    @trade = assign(:trade, Trade.create!(
      :ownedgame => nil,
      :wantedgame => nil
    ))
  end

  it "renders the edit trade form" do
    render

    assert_select "form[action=?][method=?]", trade_path(@trade), "post" do

      assert_select "input[name=?]", "trade[ownedgame_id]"

      assert_select "input[name=?]", "trade[wantedgame_id]"
    end
  end
end
