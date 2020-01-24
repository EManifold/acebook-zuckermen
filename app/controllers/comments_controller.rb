class CommentsController < ApplicationController
  include CommentsHelper
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def edit
    if !correct_user?
      redirect_with_notice(request.referrer, NOTICES[:edit_own_comments])
    elsif !recent_comment?
      redirect_with_notice(request.referrer, NOTICES[:ten_min_edit])
    else
      render :edit
    end
  end

  def create
    assign_post_and_comment
    if wall_post?
      redirect_with_notice("/#{@post.receiver_id}", NOTICES[:successful_comment])
    elsif home_post?
      redirect_with_notice(posts_path, NOTICES[:successful_comment])
    else
      redirect_with_notice(posts_path, NOTICES[:blank_comment])
    end
    # redirect_with_notice("/#{@post.receiver_id}", NOTICES[:successful_comment]) if wall_post?
    # redirect_with_notice(posts_path, NOTICES[:successful_comment]) if home_post?
    # redirect_with_notice(posts_path, NOTICES[:blank_comment]) unless @comment.save
  end

  def update
    @post = Post.where(id: @comment.post_id)[0]
    if @comment.update(comment_params)
      if @post.receiver_id
        redirect_with_notice("/#{@post.receiver_id}", NOTICES[:updated_successfully])
      else
        redirect_with_notice(posts_path, NOTICES[:updated_successfully])
      end
    else
      render :edit
    end
  end

  def destroy
    if correct_user?
      @comment.destroy
      redirect_with_notice(posts_path, NOTICES[:destroyed_successfully])
    else
      redirect_with_notice(posts_path, NOTICES[:delete_own_comments])
    end
  end

  private

  def assign_post_and_comment
    @comment = Comment.new(comment_params)
    @post = Post.find_by(id: params["comment"][:post_id])
  end

  def home_post?
    @comment.save && !@post.receiver_id
  end

  def wall_post?
    @comment.save && @post.receiver_id
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:message, :post_id, :user_id)
  end

  def correct_user?
    current_user.id == @comment.user_id
  end

  def recent_comment?
    Comment.recent?(@comment)
  end
end
