class CommentsController < ApplicationController
  def new
    @comment = Comment.new(comment_params_1)
  end

  def create
    @comment = Comment.new(comment_params_2)
    @comment.user_id = current_user.id

    # binding.pry
    if @comment.save
      redirect_to topics_path, success: 'コメントを登録しました'
    else
      redirect_to request.referer, danger: 'コメントの登録に失敗しました'
    end
  end

  private
  def comment_params_1
    params.permit(:topic_id)
  end
  
  def comment_params_2
    params.require(:comment).permit(:text).merge(params.permit(:topic_id))
  end
end
