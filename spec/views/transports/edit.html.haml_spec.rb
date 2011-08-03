require 'spec_helper'

describe "transports/edit.html.haml" do
  before(:each) do
    @transport = assign(:transport, stub_model(Transport, :domain => 'test', :transport => 'virtual:', :to_param => 'test'))
  end

  it "renders the edit transport form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => transports_path(@transport), :method => "post" do
    end
  end
end
