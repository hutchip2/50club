require 'spec_helper'

describe "scholarships/new" do
  before(:each) do
    assign(:scholarship, stub_model(Scholarship).as_new_record)
  end

  it "renders new scholarship form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", scholarships_path, "post" do
    end
  end
end
