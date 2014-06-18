require 'spec_helper'

describe "labs/edit" do
  before(:each) do
    @lab = assign(:lab, stub_model(Lab))
  end

  it "renders the edit lab form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", lab_path(@lab), "post" do
    end
  end
end
