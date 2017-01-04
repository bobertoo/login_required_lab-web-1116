class SecretsController < ApplicationController
  def new
    "hi"
  end

  def show
    if !current_user
      redirect_to :login
    else
      render :show
    end
  end
end
