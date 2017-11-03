require 'rails_helper'

RSpec.describe "profiles/new", type: :view do
  before(:each) do
    assign(:profile, Profile.new(
      :first_name => "MyText",
      :last_name => "MyText",
      :stripe_id => "MyString",
      :user => nil
    ))
  end

  it "renders new profile form" do
    render

    assert_select "form[action=?][method=?]", profiles_path, "post" do

      assert_select "textarea[name=?]", "profile[first_name]"

      assert_select "textarea[name=?]", "profile[last_name]"

      assert_select "input[name=?]", "profile[stripe_id]"

      assert_select "input[name=?]", "profile[user_id]"
    end
  end
end
