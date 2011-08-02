require 'spec_helper'

describe "transports/index.html.haml" do
  before(:each) do
    assign(:transports, [
      stub_model(Transport),
      stub_model(Transport)
    ])
  end

  it "renders a list of transports" do
    render
  end
end
