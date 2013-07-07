class Ticket < ActiveRecord::Base
  attr_accessible :showing_id, :price, :seat_number, :user_id

  belongs_to :user
  belongs_to :showing
  has_one :movie, :through => :showing

end
