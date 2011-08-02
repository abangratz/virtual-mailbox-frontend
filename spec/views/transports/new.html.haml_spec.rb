require 'spec_helper'

describe "transports/new.html.haml" do
  before(:each) do
    assign(:transport, stub_model(Transport).as_new_record)
  end

  it "renders new transport form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => transports_path, :method => "post" do
    end
  end
end
