class DownloadsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create]


  def index
    @comments = Comment.last(5).reverse
  end


  def new
    @comments = Comment.new
  end

  def create
    @comments = Comment.create(comment_params)
    redirect_to downloads_path
  end

  private

  def comment_params
    params.require(:comment).permit(:message, :improvements)
  end


end
