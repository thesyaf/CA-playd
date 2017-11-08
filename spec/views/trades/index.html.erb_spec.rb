require 'rails_helper'

RSpec.describe "trades/index", type: :view do
  before(:each) do
    assign(:trades, [
      Trade.create!(
        :ownedgame => nil,
        :wantedgame => nil
      ),
      Trade.create!(
        :ownedgame => nil,
        :wantedgame => nil
      )
    ])
  end

  it "renders a list of trades" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
