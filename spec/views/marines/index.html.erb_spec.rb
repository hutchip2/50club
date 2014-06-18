require 'spec_helper'

describe "marines/index" do
  before(:each) do
    assign(:marines, [
      stub_model(Marine),
      stub_model(Marine)
    ])
  end

  it "renders a list of marines" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
