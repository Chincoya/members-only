# frozen_string_literal: true

class SessionController < ApplicationController
  def new; end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user&.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      log_in user
      redirect_to index_url
    else
      # Create an error message.
      render 'new'
    end
  end

  def destroy
    logout
    redirect_to root_url
  end
end
