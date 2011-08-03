require 'spec_helper'

describe "mail_users/show.html.haml" do
  before(:each) do
    @user = assign(:user, stub_model(User, :id => 'test', :to_param => 'test'))
    @transport = assign(:transport, stub_model(Transport, :domain => 'test', :to_param => 'test', :transport => 'virtual:'))
  end

  it "renders attributes in <p>" do
    render
  end
end
