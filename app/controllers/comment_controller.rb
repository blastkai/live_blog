class CommentsController < ApplicationController
  def index
    @comment = Comment.all
  end
  
  def createcomment
    @comment = Comment.new(comment_params)
    #@comment.post_id = current_user.id 
    #@comment.post_id = current_user.id
    @comment.user_id = current_user.id

    @comment.save

    redirect_to :back
  end

  def show

  end 
###################################################
  private

  def comment_params
    params.require(:comment).permit( :comment_content, :post_id)
  end
end
