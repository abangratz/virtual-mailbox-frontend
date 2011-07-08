require 'spec_helper'

describe "virtuals/show.html.haml" do
  before(:each) do
    @virtual = assign(:virtual, stub_model(Virtual))
  end

  it "renders attributes in <p>" do
    render
  end
end
