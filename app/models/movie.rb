class Movie < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :showings
  has_many :tickets, :through => :showings
end
