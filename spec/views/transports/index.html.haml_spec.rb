require 'spec_helper'

describe "transports/index.html.haml" do
  before(:each) do
    assign(:transports, [
      stub_model(Transport, :to_param => 'test'),
      stub_model(Transport, :to_param => 'testx')
    ])
  end

  it "renders a list of transports" do
    render
  end
end
