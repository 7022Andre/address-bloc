require_relative "../models/entry"

RSpec.describe Entry do
	let(:entry) { Entry.new("Peter Parker", "800-888-8888", "peter@parker.com") }

	describe "attributes" do
		it "responds to name" do
			expect(entry).to respond_to(:name)
		end

		it "reports its name" do
			expect(entry.name).to eq("Peter Parker")
		end

		it "responds to phone number" do
			expect(entry).to respond_to(:phone_number)
		end

		it "reports its phone number" do
			expect(entry.phone_number).to eq("800-888-8888")
		end

		it "respond to email" do
			expect(entry).to respond_to(:email)
		end

		it "reports its email" do
			expect(entry.email).to eq("peter@parker.com")
		end
	end
	describe "#to_s" do
		it "prints an entry as a string" do
			expected_string = "Name: Peter Parker\nPhone Number: 800-888-8888\nEmail: peter@parker.com"
			expect(entry.to_s).to eq(expected_string)
		end
	end

end
