require 'rails_helper'

RSpec.describe "trades/show", type: :view do
  before(:each) do
    @trade = assign(:trade, Trade.create!(
      :ownedgame => nil,
      :wantedgame => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
