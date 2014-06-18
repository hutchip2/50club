require 'spec_helper'

describe "scholarships/index" do
  before(:each) do
    assign(:scholarships, [
      stub_model(Scholarship),
      stub_model(Scholarship)
    ])
  end

  it "renders a list of scholarships" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
