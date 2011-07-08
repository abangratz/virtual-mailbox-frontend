require 'spec_helper'

describe "virtuals/edit.html.haml" do
  before(:each) do
    @virtual = assign(:virtual, stub_model(Virtual))
  end

  it "renders the edit virtual form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => virtuals_path(@virtual), :method => "post" do
    end
  end
end
