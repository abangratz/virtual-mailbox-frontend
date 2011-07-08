class VirtualsController < ApplicationController
  # GET /virtuals
  # GET /virtuals.xml
  def index
    @virtuals = Virtual.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @virtuals }
    end
  end

  # GET /virtuals/1
  # GET /virtuals/1.xml
  def show
    @virtual = Virtual.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @virtual }
    end
  end

  # GET /virtuals/new
  # GET /virtuals/new.xml
  def new
    @virtual = Virtual.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @virtual }
    end
  end

  # GET /virtuals/1/edit
  def edit
    @virtual = Virtual.find(params[:id])
  end

  # POST /virtuals
  # POST /virtuals.xml
  def create
    @virtual = Virtual.new(params[:virtual])

    respond_to do |format|
      if @virtual.save
        format.html { redirect_to(@virtual, :notice => 'Virtual was successfully created.') }
        format.xml  { render :xml => @virtual, :status => :created, :location => @virtual }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @virtual.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /virtuals/1
  # PUT /virtuals/1.xml
  def update
    @virtual = Virtual.find(params[:id])

    respond_to do |format|
      if @virtual.update_attributes(params[:virtual])
        format.html { redirect_to(@virtual, :notice => 'Virtual was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @virtual.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /virtuals/1
  # DELETE /virtuals/1.xml
  def destroy
    @virtual = Virtual.find(params[:id])
    @virtual.destroy

    respond_to do |format|
      format.html { redirect_to(virtuals_url) }
      format.xml  { head :ok }
    end
  end
end
