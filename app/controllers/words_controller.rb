class WordsController < ApplicationController
  before_action :set_word, only: [:show, :edit, :update, :destroy]

  # GET /words
  # GET /words.json
  def index
    @words = Word.all
  end

  # GET /words/1
  # GET /words/1.json
  def show
    options = {}
    options[:searchType] = "image"

    @first_words = Word.find(params[:id]).word

    @word_search = GoogleCustomSearchApi.search(@first_words, options)
    p @word_search

    @word = Word.find(params[:id])

    @pictureoi = Picture.find_by(word_id: params[:id])

    # @menainglike = Like.create(user_id: current_user.id, content_id: params[:meaning_id], word_id: params[:word_id])

    @likelike = Meaning.find(1)

    @word.likes.build

    # @content = Like.find_by(content_id: params[:meaning_id])


    # @present_user = User.find_by(params[:id])

    # @word_user = Word.find_by(user_id: params[:id])

    # @user = User.find(current_user.id)
    # set_like_by_type
  end

  # GET /words/new
  def new
    @word = Word.new

    @word.meanings.build

    @word.examples.build

    @word.details.build

    @word.pictures.build

    @word.users.build

  end

  # GET /words/1/edit
  def edit
  end

  # POST /words
  # POST /words.json
  def create
    @word = Word.new(word_params)

    respond_to do |format|
      if @word.save
        format.html { redirect_to @word, notice: 'Word was successfully created.' }
        format.json { render :show, status: :created, location: @word }
      else
        format.html { render :new }
        format.json { render json: @word.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /words/1
  # PATCH/PUT /words/1.json
  def update
    respond_to do |format|
      if @word.update(word_params)
        format.html { redirect_to @word, notice: 'Word was successfully updated.' }
        format.json { render :show, status: :ok, location: @word }
      else
        format.html { render :edit }
        format.json { render json: @word.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /words/1
  # DELETE /words/1.json
  def destroy
    @word.destroy
    respond_to do |format|
      format.html { redirect_to words_url, notice: 'Word was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_word
      @word = Word.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def word_params
      params.require(:word).permit(:word, likes_attributes: [:id, :user_id, :word_id, :type, :content_id], meanings_attributes: [:meaning, :id, :user_id], examples_attributes: [:japanese, :english, :id], details_attributes: [:body, :id, :user_id], pictures_attributes: [:picture, :id, :picture_cache, :user_id], users_attributes: [:id])
    end
end
