require 'spec_helper'

describe Movie do
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
  	movies = Movie.all
		expect(movies).to include(@movie)
	end

  it "has a ticket" do
  	expect(@movie.tickets).to include(@ticket)
  end

  it "has the user" do
  	expect(@movie.users).to include(@user)
  end

end
