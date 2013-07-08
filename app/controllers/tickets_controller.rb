class TicketsController < ApplicationController
  def index
  end

  def too_many
  end

  def already_purchased
  end

  def show
  end

  def edit
  end

  def create
  end

  def update
    @ticket = Ticket.find(params[:id])

    respond_to do |format|
      if current_user.tickets.where(:showing_id => @ticket.showing.id).length > 4
        format.js { render :action => "too_many" } 
      elsif @ticket.user_id == nil
        @ticket.update_attributes(:user_id => current_user.id)
        format.js {render :action => "show" }
      else 
        format.js { render :action => "already_purchased" }
      end
    end
  end

  def delete
  end

  def new
  end
end
