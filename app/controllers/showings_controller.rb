class ShowingsController < ApplicationController
  def index
  end

  def create
  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show
    @showing = Showing.find(params[:id])
    if !current_user 
      redirect_to movie_path(@showing.movie.id), :notice => "You must be logged in to purchase tickets."
    end
  end
end
