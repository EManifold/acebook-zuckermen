class LikesController < ApplicationController
  def create
    @like = Like.new(like_params)
    @like.save
    redirect_to request.referrer
  end

  def destroy
    Like.find(params[:id]).destroy
    redirect_to request.referrer
  end

  private
  
  def like_params
    params.require(:like).permit(:user_id, :post_id)
  end
end
