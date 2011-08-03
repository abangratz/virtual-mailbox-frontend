require 'spec_helper'

describe VirtualsController do
  def setup_context
      @transport = mock_model(Transport).as_null_object
      @user = mock_model(User).as_null_object
      @users = [@user]
      @virtual = mock_model(Virtual).as_null_object
      @virtuals = [@virtual]
      Transport.should_receive(:get).with('x').and_return(@transport)
      @transport.should_receive(:users).and_return(@users)
      @users.should_receive(:first).with('test').and_return(@user)
  end
  context "retrieving" do
    it "GET /index gets an index of virtuals in the transport/user context" do
      setup_context
      @user.should_receive(:virtuals).and_return([@virtual])
      get :index, :transport_id => 'x', :mail_user_id => 'test'
      assigns(:transport).should eq(@transport)
      assigns(:user).should eq(@user)
      assigns(:virtuals).should eq([@virtual])
    end

    it "GET /show assigns the context variables" do
      setup_context
      @user.should_receive(:virtuals).and_return(@virtuals)
      @virtuals.should_receive(:first).with('test@test.com').and_return(@virtual)
      get :show, :transport_id => 'x', :mail_user_id => 'test', :id => 'test%40test%2ecom'
      assigns(:transport).should eq(@transport)
      assigns(:user).should eq(@user)
      assigns(:virtual).should eq(@virtual)
    end

    it "GET /edit assigns the context variables" do
      setup_context
      @user.should_receive(:virtuals).and_return(@virtuals)
      @virtuals.should_receive(:first).with('test@test.com').and_return(@virtual)
      get :edit, :transport_id => 'x', :mail_user_id => 'test', :id => 'test%40test%2ecom'
      assigns(:transport).should eq(@transport)
      assigns(:user).should eq(@user)
      assigns(:virtual).should eq(@virtual)
    end
  end
end
