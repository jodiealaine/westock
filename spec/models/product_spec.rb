require 'rails_helper'

describe Product do 
	let(:product) {create(:product)}	

	it "should create a new instance given valid attributes" do 
		expect(product).to be_valid	
	end
	it "should not create a new instance given invalid attributes" do 
		product.name = ""
		expect(product).to be_invalid
	end
end


