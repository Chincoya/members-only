# frozen_string_literal: true

module PostsHelper
  def check_login?
    if logged_in?
      flash[:success] = 'Posted'
      true
    else
      flash[:danger] = 'You need to be logged in'
      redirect_to new_post_path
    end
  end
end
