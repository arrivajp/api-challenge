class LikesController < ApplicationController

  def new
    @like = Like.new
  end

  def create

    @meaning = Meaning.find_by(id: params[:meaning_id])
    @detail = Detail.find_by(id: params[:detail_id])
    @picture = Picture.find_by(id: params[:picture_id])

    if @meaning != nil
        @meaning_word = Meaning.find(params[:meaning_id]).word_id
        @like = Like.create(user_id: current_user.id, content_id: params[:meaning_id], word_id: @meaning_word, type: 'MeaningLike')
      elsif @detail != nil
        @detail_word = Detail.find(params[:detail_id]).word_id
        @like = Like.create(user_id: current_user.id, content_id: params[:detail_id], word_id: @detail_word, type: 'DetailLike')
      elsif @picture != nil
        @picture_word = Picture.find(params[:picture_id]).word_id
        @like = Like.create(user_id: current_user.id, content_id: params[:meaning_id], word_id: @picture_word, type: 'PictureLike')
      end

    @like.save

  # @detaillike = Like.create(user_id: current_user.id, content_id: params[:detail_id])
  # @picturelike = Like.create(user_id: current_user.id, content_id: params[:picture_id])
  #
  # @meaninglikes = Like.where(content_id: params[:meaning_id])
  # @detaillikes = Like.where(content_id: params[:detail_id])
  # @picturelikes = Like.where(content_id: params[:picture_id])
  #
  # @allmenainglikes = MeaningLike.all
  # @meanmean = Meaning.find(params[:id])
    respond_to do |format|
       format.any
       format.xml  { render xml: @user }
       format.json { render json: @user }
    end

end

def destroy
  like = Like.find_by(user_id: current_user.id, content_id: params[:content_id])
  like.destroy
  @likes = Like.where(content_id: params[:content_id])
  @tweets = Tweet.all
end

private
def set_like
  @like = like.find(params[:id])
end

def like_params
  params.require(:like).permit(:like, words_attributes: [:id, :user_id, :body], meanings_attributes: [:meaning, :id, :user_id, :word_id], examples_attributes: [:japanese, :english, :id], details_attributes: [:body, :id, :user_id], pictures_attributes: [:picture, :id, :picture_cache, :user_id], users_attributes: [:id])
end


end
