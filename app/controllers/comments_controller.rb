# frozen_string_literal: true

class CommentsController < ApplicationController
  before_action :check_login?, only: [:create]
  def new
    @comment = Comment.new
  end

  def create
    @data = comment_params
    Anonuser.create(name: @data[:anonuser_id]) unless Anonuser.find_by(name: @data[:anonuser_id])
    @comment = Comment.new(content: @data[:content], user_id: current_user.id,
                           anonuser_id: Anonuser.find_by(name: @data[:anonuser_id]).id)
    if @comment.save
      redirect_to root_url
    else
      render 'new'
    end
  end

  def index
    @comments = Comment.all
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :anonuser_id)
  end
end
