class Ticket < ActiveRecord::Base
  attr_accessible :body, :department, :email, :name, :status, :subject, :owner, :reply
  
  validates :name, :email, :subject, :body, :presence => true
  before_save :default_values
  
  def default_values
    self.status ||= 'Waiting for Staff Response'
  end  
end
