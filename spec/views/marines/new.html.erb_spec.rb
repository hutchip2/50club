require 'spec_helper'

describe "marines/new" do
  before(:each) do
    assign(:marine, stub_model(Marine).as_new_record)
  end

  it "renders new marine form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", marines_path, "post" do
    end
  end
end
