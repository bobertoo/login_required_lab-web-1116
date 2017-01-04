class SessionsController < ApplicationController
  def new
  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to :login
    else
      session[:name] = params[:name]
      redirect_to :secrets
    end
  end

  def destroy
    if !session[:name]
      redirect_to :login
    else
      session.destroy
      redirect_to :login
    end
  end
end
