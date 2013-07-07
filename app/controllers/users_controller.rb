class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def destroy
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      session[:email] = @user.email
      redirect_to @user
    else
      render action: "new"
    end

  end

  def update
  end

  def edit
  end
end
