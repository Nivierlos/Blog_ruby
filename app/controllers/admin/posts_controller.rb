class Admin::PostsController < Admin::ApplicationController
  before_action :verify_logged_in

  def new
    @post = Post.new
    @category = Category.all
    @user = User.all
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = 'Post created'
      redirect_to admin_posts_path
    else
      render 'new'
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:notice] = 'Post updated'
      redirect_to admin_posts_path
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to admin_posts_path
  end

  def index
    if params[:search]
      @posts = Post.search(params[:search]).all.order('created_at DESC').paginate(:per_page => 10, :page => params[:page])
    else
      @posts = Post.all.order('created_at DESC').paginate(:per_page => 10, :page => params[:page])
    end
  end

  def show
  end
  def post_params
    params.require(:post).permit(:title, :category_id, :user_id, :tags, :profile_image, :body)
  end
end
