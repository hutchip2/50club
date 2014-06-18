require 'spec_helper'

describe "data/show" do
  before(:each) do
    @datum = assign(:datum, stub_model(Datum))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
