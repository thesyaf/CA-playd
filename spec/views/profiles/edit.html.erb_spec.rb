require 'rails_helper'

RSpec.describe "profiles/edit", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :first_name => "MyText",
      :last_name => "MyText",
      :stripe_id => "MyString",
      :user => nil
    ))
  end

  it "renders the edit profile form" do
    render

    assert_select "form[action=?][method=?]", profile_path(@profile), "post" do

      assert_select "textarea[name=?]", "profile[first_name]"

      assert_select "textarea[name=?]", "profile[last_name]"

      assert_select "input[name=?]", "profile[stripe_id]"

      assert_select "input[name=?]", "profile[user_id]"
    end
  end
end
