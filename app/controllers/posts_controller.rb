# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :check_login?, only: [:create]
  def new
    @post = Post.new
  end

  def create
    @data = post_params
    Anonuser.create(name: @data[:anonuser_id]) unless Anonuser.find_by(name: @data[:anonuser_id])
    @post = Post.new(content: @data[:content], user_id: current_user.id,
                     anonuser_id: Anonuser.find_by(name: @data[:anonuser_id]).id)
    if logged_in? && @post.save
      redirect_to root_url
    else
      render 'new'
    end
  end

  def index
    @posts = Post.all
  end

  private

  def post_params
    params.require(:post).permit(:content, :anonuser_id)
  end
end
