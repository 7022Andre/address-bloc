require_relative "../models/address_book"

RSpec.describe AddressBook do
	let(:book) { AddressBook.new }

	describe "attributes" do
		it "responds to entries" do
			expect(book).to respond_to(:entries)
		end

		it "initializes entries as an array" do
			expect(book.entries).to be_an(Array)
		end

		it "initializes entries as empty" do
			expect(book.entries.size).to eq(0)
		end
	end

	describe "#add_entry" do
		it "adds only one entry to the address book" do
			book.add_entry("Peter Parker", "800-888-8888", "peter@parker.com")
			expect(book.entries.size).to eq(1)
		end

		it "adds the correct information to entries" do
			book.add_entry("Peter Parker", "800-888-8888", "peter@parker.com")
			new_entry = book.entries[0]
			expect(new_entry.name).to eq("Peter Parker")
			expect(new_entry.phone_number).to eq("800-888-8888")
			expect(new_entry.email).to eq("peter@parker.com")
		end
	end
end
