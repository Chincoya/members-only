# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionHelper
  include CommentsHelper

  def current_user
    if (user_id = session[:user_id])
      @current_user ||= User.find(user_id)
    elsif (user_id = cookies.signed[:user_id])
      user = User.find(user_id)
      user.attributes.each { |att| puts att }
      @current_user = user if user&.authenticated?(cookies[:remember_token])
    else
      @current_user = nil
    end
    @current_user
  end
end
