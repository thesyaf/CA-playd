require 'rails_helper'

RSpec.describe "profiles/index", type: :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        :first_name => "MyText",
        :last_name => "MyText",
        :stripe_id => "Stripe",
        :user => nil
      ),
      Profile.create!(
        :first_name => "MyText",
        :last_name => "MyText",
        :stripe_id => "Stripe",
        :user => nil
      )
    ])
  end

  it "renders a list of profiles" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Stripe".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
