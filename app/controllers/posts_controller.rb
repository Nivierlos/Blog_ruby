class PostsController < ApplicationController
  def index
    if params[:search]
      @categories = Category.all
      @posts = Post.search(params[:search]).all.order('created_at DESC').paginate(:per_page => 10, :page => params[:page])
    else
      @categories = Category.all
      @posts = Post.all.order('created_at DESC').paginate(:per_page => 10, :page => params[:page])
    end
  end

  def show
    @post = Post.find(params[:id])
    @categories = Category.all
    @comment = Comment.new
    @comments = Comment.all
  end
end
