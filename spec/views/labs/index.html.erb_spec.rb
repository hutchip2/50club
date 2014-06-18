require 'spec_helper'

describe "labs/index" do
  before(:each) do
    assign(:labs, [
      stub_model(Lab),
      stub_model(Lab)
    ])
  end

  it "renders a list of labs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
