class User < ActiveRecord::Base
	has_secure_password

  attr_accessible :email, :name, :password, :password_confirmation

  has_many :tickets
  has_many :showings, :through => :tickets

  validates :email, :uniqueness => true
end
