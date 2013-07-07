class TicketsController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  def create
  end

  def update
    @ticket = Ticket.find(params[:id])
    if current_user.tickets.where(:showing_id => @ticket.showing.id).length > 4
      redirect_to showing_path(@ticket.showing.id), :notice => "Sorry, you can only purchase up to five tickets for this showing."
    else
      @ticket.update_attributes(:user_id => current_user.id)
      redirect_to user_path(current_user.id), :notice => "Ticket purchased!"
    end
  end

  def delete
  end

  def new
  end
end
