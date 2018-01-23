class LikesController < ApplicationController
  before_action :set_like, only: [:show, :edit, :update, :destroy]


  def new
    @likes = Likes.new
  end

  def create
    @likes = Likes.new(likes_params)
  end
end
