class MailUsersController < ApplicationController
  # GET /users
  # GET /users.xml
  def index
    @transport = Transport.get(params[:transport_id])
    @users = @transport.users

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end

  # GET /users/1
  # GET /users/1.xml
  def show
    @transport = Transport.get(params[:transport_id])
    @user = @transport.users.first(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # GET /users/new
  # GET /users/new.xml
  def new
    @transport = Transport.get(params[:transport_id])
    @user = @transport.users.new(params[:id])

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # GET /users/1/edit
  def edit
    @transport = Transport.get(params[:transport_id])
    @user = @transport.users.first(params[:id])
  end

  # POST /users
  # POST /users.xml
  def create
    @transport = Transport.get(params[:transport_id])
    @user = @transport.users.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to(transport_mail_user_url(@transport, @user), :notice => 'User was successfully created.') }
        format.xml  { render :xml => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.xml
  def update
    @transport = Transport.get(params[:transport_id])
    @user = @transport.users.first(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to(transport_mail_user_url(@transport, @user), :notice => 'User was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    @user = User.get(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to(transport_mail_users_url(:transport_id => params[:transport_id])) }
      format.xml  { head :ok }
    end
  end
end
