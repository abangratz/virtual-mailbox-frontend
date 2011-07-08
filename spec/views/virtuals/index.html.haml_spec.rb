require 'spec_helper'

describe "virtuals/index.html.haml" do
  before(:each) do
    assign(:virtuals, [
      stub_model(Virtual),
      stub_model(Virtual)
    ])
  end

  it "renders a list of virtuals" do
    render
  end
end
