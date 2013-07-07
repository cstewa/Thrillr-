require 'spec_helper'

describe Hour do
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
 		hours = Hour.all
 		expect(hours).to include(@hour)
 	end

 	it "has the proper attributes" do
 		expect(@hour.name).to eq("7:00")
 	end

 	it "lets movie access its hours" do
 		expect(@movie.hours).to include(@hour)
 	end

 	it "lets movie access its days" do
 		expect(@movie.days).to include(@day)
 	end


end
