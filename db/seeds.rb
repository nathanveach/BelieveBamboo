# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Product.create(
	title: 'Bamboo Drinking Straws [10 pk]', 
	price: 10, 
	description: 'These eco-friendly bamboo straws are not only sustainable but also completely bio-degradable. Perfect for events or parties these organic straws are sure to be a conversation starter!', 
	image: 'https://believebamboo.s3-us-west-1.amazonaws.com/bamboo-straws400x400.jpg', 
	image2: 'https://believebamboo.s3-us-west-1.amazonaws.com/straws(2)400x400.jpg', 
	image3: 'https://believebamboo.s3-us-west-1.amazonaws.com/straw(3)400x400.jpg'
)



Product.create(
	title: 'Bamboo Toothbrushes [5 pk]', 
	price: 10, 
	description: 'Say no more to plastic toothbrushes and prepare to take on the sustainable initiative with this 100% organic bamboo toothbrush. With 5 pieces included all individually wrapped these make perfect gifts for friends & family.', 
	image: 'https://believebamboo.s3-us-west-1.amazonaws.com/toothbrush.jpg', 
	image2: 'https://believebamboo.s3-us-west-1.amazonaws.com/toothbrush(2)400x400.jpg', 
	image3: 'https://believebamboo.s3-us-west-1.amazonaws.com/toothbrush(3)400x400.jpg'
)



Product.create(
	title: 'Bamboo Cutlery Set [Full]', 
	price: 15, image: 'https://believebamboo.s3-us-west-1.amazonaws.com/cutlery.jpg', 
	description: 'This all inclusive all bamboo cutlery set is perfect for all your travel needs. Wrapped up in a floral patterned fabric these utensils are sure to bring the life to any picnic!', 
	image2: 'https://believebamboo.s3-us-west-1.amazonaws.com/cutlery(2)400x400.jpg', 
	image3: 'https://believebamboo.s3-us-west-1.amazonaws.com/cutlery(3)400x400.jpg'
)
