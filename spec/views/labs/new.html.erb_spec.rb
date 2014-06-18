require 'spec_helper'

describe "labs/new" do
  before(:each) do
    assign(:lab, stub_model(Lab).as_new_record)
  end

  it "renders new lab form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", labs_path, "post" do
    end
  end
end
