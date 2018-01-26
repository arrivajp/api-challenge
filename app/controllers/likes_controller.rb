class LikesController < ApplicationController

  def new
    @like = Like.new
  end

  def create
  @like = Like.create(user_id: current_user.id, content_id: params[:meaning_id], word_id: params[:word_id],type: 'MeaningLike')
  # @detaillike = Like.create(user_id: current_user.id, content_id: params[:detail_id])
  # @picturelike = Like.create(user_id: current_user.id, content_id: params[:picture_id])
  #
  # @meaninglikes = Like.where(content_id: params[:meaning_id])
  # @detaillikes = Like.where(content_id: params[:detail_id])
  # @picturelikes = Like.where(content_id: params[:picture_id])
  #
  # @allmenainglikes = MeaningLike.all
  # @meanmean = Meaning.find(params[:id])
end

def destroy
  like = Like.find_by(user_id: current_user.id, content_id: params[:content_id])
  like.destroy
  @likes = Like.where(content_id: params[:content_id])
  @tweets = Tweet.all
end



end
