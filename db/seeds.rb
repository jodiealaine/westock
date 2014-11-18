# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all

Product.create!(name: 'St Ives Summer Pack',
	description: 
		%{<p>Gorgeous set of photographs taken during the summer 
			of 2014 in St Ives, Cornwall.
			</p>},
	image_url: 'http://beachmuser.com/wp/wp-content/uploads/2014/10/IMG_3231.jpg',
	price: 0.00,
	availability_date: '2014-11-18',
	category: 'free',
	active: true )

