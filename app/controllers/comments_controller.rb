class CommentsController < ApplicationController
  before_action :authenticate_user!, except: [:new, :create]
  before_action :find_post

  def new
    @comment = @post.comments.new
  end

  def create
    @comment = @post.comments.build(comment_params)

    if @comment.save
      redirect_to post_path(@post), notice: "新增評論成功！"
    else
      render :new
    end
  end

  def destroy
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post), alert: "刪除評論成功"
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end

  def find_post
    @post = Post.find(params[:post_id])
  end
end
