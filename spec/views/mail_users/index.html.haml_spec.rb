require 'spec_helper'

describe "mail_users/index.html.haml" do
  before(:each) do
    assign(:transport, stub_model(Transport, :to_param => 'test', :domain => 'test', :transport => 'virtual:'))
    assign(:users, [
      stub_model(User, :to_param => 'test1'),
      stub_model(User, :to_param => 'test2')
    ])
  end

  it "renders a list of users" do
    render
  end
end
