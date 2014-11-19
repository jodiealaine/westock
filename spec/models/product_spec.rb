require 'spec_helper'

describe Product do
	before(:each) do 
		@category = Factory(:category)
		@attr = { :name => "some name",
							:category_id => @category.id}
	end
	it "should creat a new instance given valid attributes" do 
		@category.products.create!(@attr)	
	end

end


