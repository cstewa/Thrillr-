require 'spec_helper'

describe Ticket do
	before do
		@ticket = Ticket.create(:seat_number => "A5", :price => "$10")
	end

	it "is saved properly" do
		tickets = Ticket.all
		expect(tickets).to include(@ticket)
	end

	it "has the proper seat number" do
		expect(@ticket.seat_number).to eq("A5")
	end

	it "has the proper price" do
		expect(@ticket.price).to eq("$10")
	end
end