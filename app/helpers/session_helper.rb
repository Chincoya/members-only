# frozen_string_literal: true

module SessionHelper
  def log_in(user)
    session[:user_id] = user.id
  end

  def logged_in?
    session[:user_id]
  end

  def logout
    session.delete(:user_id)
    puts 'a long string is here'
  end
end
