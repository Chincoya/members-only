# frozen_string_literal: true

module SessionHelper
  def logged_in?
    if session[:user_id] || cookies.signed[:user_id]
      true
    else
      false
    end
  end

  def remember_me(user)
    user.remember
    cookies.permanent.signed[:user_id] = user.id
    cookies.permanent[:remember_token] = user.remember_token
  end

  def log_in(user)
    return if logged_in?

    session[:user_id] = user.id
    flash[:success] = "Welcome, #{user.name}!!"
    remember_me user
  end

  def logout
    session.delete(:user_id)
  end

  def forget(user)
    user.forget
    cookies.delete(:remember_token)
    cookies.delete(:user_id)
  end
end
