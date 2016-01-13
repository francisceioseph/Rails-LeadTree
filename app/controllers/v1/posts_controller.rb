class V1::PostsController < V1::BaseController
  def create
    @post = Post.new post_params
    @post.save
  end 

  def update 
    @post = Post.find id_params
    @post.update_attributes post_params
  end  

  def show 
    @post = Post.find id_params
  end  

  def index
    @posts = Post.where(classroom_id: classroom_id_params)
  end  

  def destroy
    @post = Post.find id_params
    @post.destroy
  end

  protected

  def post_params
    params.permit(:post).permit(:text)
  end

  def classroom_id_params
    params.require(:classroom_id)
  end
end
