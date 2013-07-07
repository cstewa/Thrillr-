class Showing < ActiveRecord::Base
  attr_accessible :day, :hour, :movie_id

  belongs_to :movie
  has_many :tickets
  has_many :users, :through => :tickets
end
