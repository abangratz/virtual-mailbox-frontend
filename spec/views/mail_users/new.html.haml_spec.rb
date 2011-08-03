require 'spec_helper'

describe "mail_users/new.html.haml" do
  before(:each) do
    @user = assign(:user, stub_model(User).as_new_record)
    @transport = assign(:transport, stub_model(Transport, :to_param => 'test'))
  end

  it "renders new user form" do
    render
    assert_select "form", :action => transport_mail_users_path(@transport, @user), :method => "post" do
    end
  end
end
