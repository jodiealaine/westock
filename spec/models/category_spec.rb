require 'rails_helper'

describe Category do
	before(:each) do 	
	end
	it "should create a new instance given valid attributes" do 
		expect(build(:category, name: "Some Name")).to be_valid	
	end
	it "should not create a new instance given invalid attributes" do 
		expect(build(:category, name: "")).to be_invalid
	end
	it "should not create a new instance with an existing name" do 
		create(:category, name: "Same")
		expect(build(:category, name: "Same")).to be_invalid
	end
end
