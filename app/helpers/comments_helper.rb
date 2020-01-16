module CommentsHelper

  def is_logged_in?
    if logged_in?
      flash[:success] = 'Comment Posted'
      true
    else
      flash.now[:danger] = 'You need to be logged in'
      false
    end
  end

end
