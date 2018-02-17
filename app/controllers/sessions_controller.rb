class SessionsController < ApplicationController
  skip_before_action :require_login, except: [:destroy]

  def new
    @user = User.new
    render :layout => nil

  end

  def create
    @user = login(params[:email], params[:password])
    if @user
      redirect_back_or_to(:words, notice: 'Login successful')
    else
      flash.now[:alert] = 'Login failed'
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to :users, notice: 'Logged out!'
  end
end
