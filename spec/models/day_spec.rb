require 'spec_helper'

describe Day do
  before do
  	@day = Day.create(:name => "April 1, 2013")
  	@hour = Hour.create(:name => "7:00")
  	@day.hours << @hour
  	@day.save
  	@movie = Movie.create(:name => "The Orphan", :description => "terrifying orphan girl")
  	@movie.hours << @hour
  	@movie.save
 	end	

 	it "saves" do
 		days = Day.all
 		expect(days).to include(@day)
 	end

 	it "has the right hour" do
 		expect(@day.hours).to include(@hour)
 	end

 	it "has the movie" do
 		expect(@day.movies).to include(@movie)
 	end

end
