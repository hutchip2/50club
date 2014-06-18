require 'spec_helper'

describe "scholarships/edit" do
  before(:each) do
    @scholarship = assign(:scholarship, stub_model(Scholarship))
  end

  it "renders the edit scholarship form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", scholarship_path(@scholarship), "post" do
    end
  end
end
