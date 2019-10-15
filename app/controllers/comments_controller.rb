class CommentsController < ApplicationController

  def index
    @comment = Comment.new
  end

  def create
    @comment = Comment.find(params[:comment_id])
    @comment.create(comment_params)
  end

  private

  def comment_params
    params.require(:comment).permit(:user)
  end


end
