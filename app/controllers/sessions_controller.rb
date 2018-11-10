class SessionsController < ApplicationController
  include SessionsHelper

  def new
  end

  def create
    if valid_name?
      session[:name] = params[:name]
      redirect_to root_path
    else
      redirect_to login_path
    end
  end

  def destroy
    session[:name] = nil if session[:name]
    redirect_to root_path
  end
end
