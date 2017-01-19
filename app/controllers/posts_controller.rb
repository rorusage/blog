class PostsController < ApplicationController
  before_action :find_post, except: [:index, :new, :create]
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to posts_path, notice: "新增文章成功！"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update

    if @post.update(post_params)
      redirect_to posts_path, ud: "更新文章成功～"
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path, alert: "刪除文章成功～"
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end

  def find_post
    @post = Post.find(params[:id])
  end
end
