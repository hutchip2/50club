require 'spec_helper'

describe "data/index" do
  before(:each) do
    assign(:data, [
      stub_model(Datum),
      stub_model(Datum)
    ])
  end

  it "renders a list of data" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
