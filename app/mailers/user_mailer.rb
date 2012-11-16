class UserMailer < ActionMailer::Base
  default from: "trasys.team@gmail.com"
  
  def send_link(ticket)
    @ticket = ticket
    @url = "trasys.com/tickets/"
    mail(:to => ticket.email, :subject => "Ticket Link")
  end
  
  def send_changes(ticket)
    @ticket = ticket
    @url = "trasys.com/tickets/changes"
    mail(:to => ticket.email, :subject => "Ticket Changes")
  end
end
