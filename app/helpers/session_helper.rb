module SessionHelper

  def log_in(user)
    session[:user_id] = user.id
  end

  def logged_in?
    puts session[:user_id]
    session[:user_id]
  end

  def logout
    session.delete(:user_id)
    puts "a long string is here"
  end

end
