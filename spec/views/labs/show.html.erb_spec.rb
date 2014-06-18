require 'spec_helper'

describe "labs/show" do
  before(:each) do
    @lab = assign(:lab, stub_model(Lab))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
