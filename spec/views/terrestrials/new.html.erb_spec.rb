require 'spec_helper'

describe "terrestrials/new" do
  before(:each) do
    assign(:terrestrial, stub_model(Terrestrial).as_new_record)
  end

  it "renders new terrestrial form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", terrestrials_path, "post" do
    end
  end
end
