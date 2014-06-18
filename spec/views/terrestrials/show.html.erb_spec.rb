require 'spec_helper'

describe "terrestrials/show" do
  before(:each) do
    @terrestrial = assign(:terrestrial, stub_model(Terrestrial))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
