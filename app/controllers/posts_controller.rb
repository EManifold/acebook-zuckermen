class PostsController < ApplicationController

  before_action :redirect_to_index_if_not_signed_in

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
    if @post.user != current_user
      flash[:alert] = "You can only edit your own posts"
      redirect_to posts_url
    elsif !@post.recent?
      flash[:alert] = "You can only edit the post for 10 minutes after posting"
      redirect_to posts_url
    end
  end

  def create
    @user = current_user
    @post = @user.posts.new(post_params)
    @post.line_break
    if @post.save
      if @post.receiver_id
        redirect_to "/#{@post.receiver_id}"
      else
        redirect_to posts_url
      end
    else
      render 'new'
    end

  end

  def destroy
    @post = Post.find(params[:id])
    unless @post.user == current_user
      flash[:alert] = "You can only delete your own posts"
    else
      @post.destroy
    end
    redirect_to posts_url
  end

  def index
    @posts = Post.where(receiver_id: nil)
    @comment = Comment.new
  end

  def wall
    @comment = Comment.new
    @post = Post.new
    if User.exists?(params[:id])
      @user = User.find(params[:id])
      @posts = Post.where(receiver_id: params[:id])
    elsif User.find_by(username: params[:id])
      @user = User.find_by(username: params[:id])
      @posts = Post.where(receiver_id: @user.id)
      render :wall
    else
      render_404
    end
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params) ? (redirect_to posts_url) : (render 'edit')
  end

  private

  def post_params
    params.require(:post).permit(:message, :receiver_id)
  end
end
