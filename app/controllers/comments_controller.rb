class CommentsController < ApplicationController
  before_action  :authenticate_user!
  def create
    comment = Comment.create(comment_params)
    redirect_to "/videos/#{comment.video.id}"
  end
  def destroy
    Comment.find_by(id: params[:id], video_id: params[:video_id]).destroy
    redirect_back(fallback_location: root_path) 
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, video_id: params[:video_id])
  end
end