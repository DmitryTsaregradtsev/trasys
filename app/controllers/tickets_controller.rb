class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all(conditions: {status: params[:status]})
  end
  
  
  def new
    @ticket = Ticket.new
  end
  
  
  def create
    @ticket = Ticket.new(params[:ticket])
    if @ticket.save
      redirect_to root_path, notice: 'Your ticket was sended. Please check your email for link on your ticket.'
      UserMailer.send_link(@ticket).deliver
    else
      render "new"
    end
  end
  
  
  def edit
    @ticket = Ticket.find(params[:id])
  end
  
  
  def update
    @ticket = Ticket.find(params[:id])
    
    if @ticket.update_attributes(params[:ticket])
      redirect_to tickets_path, notice: 'Ticket updated'
      UserMailer.send_changes(@ticket).deliver
    else
      render "edit"
    end
  end
end
