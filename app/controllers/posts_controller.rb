class PostsController < ApplicationController

  def index
    @posts = Post.all
  end
  def new
  end

  def create
    @article = Post.new(post_params)
    @article.save
    redirect_to @article
  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:name, :age, :email, :state, :text)
  end
end





