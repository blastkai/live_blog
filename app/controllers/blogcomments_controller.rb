class BlogcommentsController < ApplicationController
  def index
    @blogcomment = Blogcomment.all
  end
  
  def createcomment
    @blogcomment = Blogcomment.new(comment_params)
    #@blogcomment.post_id = current_user.id 
    #@blogcomment.post_id = current_user.id
    @blogcomment.user_id = current_user.id

    @blogcomment.save

    redirect_to :back
  end

  def show

  end 
###################################################
  private

  def comment_params
    params.require(:blogcomment).permit( :comment_content, :post_id)
  end
end
