# frozen_string_literal: true

module CommentsHelper
  def check_login?
    if logged_in?
      flash[:success] = 'Comment Posted'
      true
    else
      flash.now[:danger] = 'You need to be logged in'
      false
    end
  end
end
