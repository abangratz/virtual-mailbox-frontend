require 'spec_helper'

describe "mail_users/edit.html.haml" do
  before(:each) do
    @transport = assign(:transport, stub_model(Transport, :to_param => 'test'))
    @user = assign(:user, stub_model(User, :to_param => 'test_user'))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => transport_mail_users_path(@transport, @user), :method => "post" do
    end
  end
end
