require 'spec_helper'

describe "marines/edit" do
  before(:each) do
    @marine = assign(:marine, stub_model(Marine))
  end

  it "renders the edit marine form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", marine_path(@marine), "post" do
    end
  end
end
