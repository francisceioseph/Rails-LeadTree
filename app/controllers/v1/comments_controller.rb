class V1::CommentsController < V1::BaseController
  def create
    @comment = Comment.new comment_params
  end

  def update
    @comment = Comment.find id_params
    @comment.update_attributes comment_params
  end

  def index
    @comments = Comment.where(post_id: post_id_params)
  end

  def show
    @comment = Comment.find id_params
  end

  def destroy
    @comment = Comment.find id_params
    @comment.destroy
  end

  protected

  def comment_params
    params.require(:comment).permit(:text)
  end

  def post_id_params
    params.require(:post_id)
  end
end
