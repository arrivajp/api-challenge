class MeaningsController < ApplicationController
  before_action :set_meaning, only: [:show, :edit, :update, :destroy]

  # GET /meanings
  # GET /meanings.json
  def index
    @meanings = Meaning.all
  end

  # GET /meanings/1
  # GET /meanings/1.json
  def show
  end

  # GET /meanings/new
  def new
    @meaning = Meaning.new
  end

  # GET /meanings/1/edit
  def edit
  end

  # POST /meanings
  # POST /meanings.json
  def create
    @meaning = Meaning.new(meaning_params)

    respond_to do |format|
      if @meaning.save
        format.html { redirect_to @meaning.word, notice: 'Meaning was successfully created.' }
        format.json { render :show, status: :created, location: @meaning }
      else
        format.html { render :new }
        format.json { render json: @meaning.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meanings/1
  # PATCH/PUT /meanings/1.json
  def update
    respond_to do |format|
      if @meaning.update(meaning_params)
        format.html { redirect_to @meaning.word, notice: 'Meaning was successfully updated.' }
        format.json { render :show, status: :ok, location: @meaning }
      else
        format.html { render :edit }
        format.json { render json: @meaning.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meanings/1
  # DELETE /meanings/1.json
  def destroy
    @meaning.destroy
    respond_to do |format|
      format.html { redirect_to @meaning.word, notice: 'Meaning was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meaning
      @meaning = Meaning.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meaning_params
      params.require(:meaning).permit(:meaning, :word_id)
    end
end
