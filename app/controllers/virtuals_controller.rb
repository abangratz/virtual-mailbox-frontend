class VirtualsController < ApplicationController

  def index
    @transport = Transport.get(params[:transport_id])
    @user = @transport.users.first(params[:mail_user_id])
    @virtuals = @user.virtuals
  end

  def show
    @transport = Transport.get(params[:transport_id])
    @user = @transport.users.first(params[:mail_user_id])
    @virtual = @user.virtuals.first(CGI.unescape(params[:id]))
  end

  def edit
    @transport = Transport.get(params[:transport_id])
    @user = @transport.users.first(params[:mail_user_id])
    @virtual = @user.virtuals.first(CGI.unescape(params[:id]))
  end
end
