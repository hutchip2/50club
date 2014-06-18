require 'spec_helper'

describe "terrestrials/edit" do
  before(:each) do
    @terrestrial = assign(:terrestrial, stub_model(Terrestrial))
  end

  it "renders the edit terrestrial form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", terrestrial_path(@terrestrial), "post" do
    end
  end
end
