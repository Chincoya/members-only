class CommentsController < ApplicationController
  
  def new
    @comment = Comment.new
  end
  
  def create
    @data = comment_params
    Anonuser.create({name: @data[:anonuser_id]}) unless Anonuser.find_by(name: @data[:anonuser_id])
    @comment = Comment.new({content: @data[:content], user_id: 1, anonuser_id: Anonuser.find_by(name: @data[:anonuser_id]).id})
    if @comment.save
      redirect_to root_url
    else
      render 'new'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :anonuser_id)
  end

end
