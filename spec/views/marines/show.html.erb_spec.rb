require 'spec_helper'

describe "marines/show" do
  before(:each) do
    @marine = assign(:marine, stub_model(Marine))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
