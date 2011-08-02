require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe TransportsController do

  # This should return the minimal set of attributes required to create a valid
  # Transport. As you add validations to Transport, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all transports as @transports" do
      transport = Transport.create! valid_attributes
      get :index
      assigns(:transports).should eq([transport])
    end
  end

  describe "GET show" do
    it "assigns the requested transport as @transport" do
      transport = Transport.create! valid_attributes
      get :show, :id => transport.id.to_s
      assigns(:transport).should eq(transport)
    end
  end

  describe "GET new" do
    it "assigns a new transport as @transport" do
      get :new
      assigns(:transport).should be_a_new(Transport)
    end
  end

  describe "GET edit" do
    it "assigns the requested transport as @transport" do
      transport = Transport.create! valid_attributes
      get :edit, :id => transport.id.to_s
      assigns(:transport).should eq(transport)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Transport" do
        expect {
          post :create, :transport => valid_attributes
        }.to change(Transport, :count).by(1)
      end

      it "assigns a newly created transport as @transport" do
        post :create, :transport => valid_attributes
        assigns(:transport).should be_a(Transport)
        assigns(:transport).should be_persisted
      end

      it "redirects to the created transport" do
        post :create, :transport => valid_attributes
        response.should redirect_to(Transport.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved transport as @transport" do
        # Trigger the behavior that occurs when invalid params are submitted
        Transport.any_instance.stub(:save).and_return(false)
        post :create, :transport => {}
        assigns(:transport).should be_a_new(Transport)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Transport.any_instance.stub(:save).and_return(false)
        post :create, :transport => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested transport" do
        transport = Transport.create! valid_attributes
        # Assuming there are no other transports in the database, this
        # specifies that the Transport created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Transport.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => transport.id, :transport => {'these' => 'params'}
      end

      it "assigns the requested transport as @transport" do
        transport = Transport.create! valid_attributes
        put :update, :id => transport.id, :transport => valid_attributes
        assigns(:transport).should eq(transport)
      end

      it "redirects to the transport" do
        transport = Transport.create! valid_attributes
        put :update, :id => transport.id, :transport => valid_attributes
        response.should redirect_to(transport)
      end
    end

    describe "with invalid params" do
      it "assigns the transport as @transport" do
        transport = Transport.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Transport.any_instance.stub(:save).and_return(false)
        put :update, :id => transport.id.to_s, :transport => {}
        assigns(:transport).should eq(transport)
      end

      it "re-renders the 'edit' template" do
        transport = Transport.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Transport.any_instance.stub(:save).and_return(false)
        put :update, :id => transport.id.to_s, :transport => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested transport" do
      transport = Transport.create! valid_attributes
      expect {
        delete :destroy, :id => transport.id.to_s
      }.to change(Transport, :count).by(-1)
    end

    it "redirects to the transports list" do
      transport = Transport.create! valid_attributes
      delete :destroy, :id => transport.id.to_s
      response.should redirect_to(transports_url)
    end
  end

end
