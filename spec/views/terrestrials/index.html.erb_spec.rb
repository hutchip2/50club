require 'spec_helper'

describe "terrestrials/index" do
  before(:each) do
    assign(:terrestrials, [
      stub_model(Terrestrial),
      stub_model(Terrestrial)
    ])
  end

  it "renders a list of terrestrials" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
