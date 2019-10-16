class CommentsController < ApplicationController

  def index
    @comment = Comment.new
  end

  def show
    @comments = Comment.find_by_id(params[:id])
    return render_not_found if @comment.blank?
  end

  def create
    @comments = Comment.create(comment_params)
    redirect_to root_path
  end

  private

  def comment_params
    params.require(:comment).permit(:user, :message)
  end


end
