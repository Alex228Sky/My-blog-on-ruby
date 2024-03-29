class PostsController < ApplicationController
  def index
    @post = Post.all
  end

  def new

  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to @post
  end

  private def post_params
    params.require(:posts).permit(:title, :body)
  end

end
