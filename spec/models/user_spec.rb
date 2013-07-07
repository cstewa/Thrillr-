require 'spec_helper'

describe User do
  before do
  	@ticket = Ticket.create(:seat_number => "A5", :price => "$10")
  	@user = User.create(:name => "Christina", :email => "christina.v.stewart@gmail.com", :password => "apples", :password_confirmation => 
  	"apples")
  	@user.tickets << @ticket
  	@user.save
  	@movie = Movie.create(:name => "Insidious", :description => "psychological horror/thriller")
  	@movie.tickets << @ticket
  	@movie.save
  end

  it "saves" do
  	users = User.all
  	expect(users).to include(@user)
  end

  it "signs up properly" do
  	user_invalid = User.new(:name => "Ugh")

  	expect(user_invalid.valid?).to be_false
  end

  it "has a ticket" do
  	expect(@user.tickets).to include(@ticket)
  end

  it "has the movie" do
  	expect(@user.movies).to include(@movie)
  end

end
