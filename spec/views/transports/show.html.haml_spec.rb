require 'spec_helper'

describe "transports/show.html.haml" do
  before(:each) do
    @transport = assign(:transport, stub_model(Transport, :to_param => 'test'))
  end

  it "renders attributes in <p>" do
    render
  end
end
