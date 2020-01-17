# frozen_string_literal: true

class SessionController < ApplicationController
  def new; end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to index_url
    else
      pass = 'password'
      em = 'email'
      flash.now[:danger] = "Invalid #{ user ? pass : em }"
      render 'new'
    end
  end

  def destroy
    logout
    forget current_user
    redirect_to root_url
  end
  
end
