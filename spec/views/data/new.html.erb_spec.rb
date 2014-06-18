require 'spec_helper'

describe "data/new" do
  before(:each) do
    assign(:datum, stub_model(Datum).as_new_record)
  end

  it "renders new datum form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", data_path, "post" do
    end
  end
end
