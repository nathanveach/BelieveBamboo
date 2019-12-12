# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Products 

Product.create(
	title: 'Bamboo Drinking Straws [10pc]', 
	price: 15,
	price2: '$20',
	description: "The idea that started it all.  These eco-friendly bamboo straws are not only sustainable, bio-degradable,
 	but also extremely durable. Perfect for events or every day use each one of these straws can last weeks.",
	description2: "Also included is a versatile cleaning brush making cleaning an ease.  Ofcourse, you can also throw them in the dishwasher for easier 
	cleaning.  These straws are very resilient to moisture and heat some of our customers prefer boiling them in water to
	disinfect.  Join the bamboo movement today and make a difference in the fight against plastic!",
	spec1: '10x Bamboo Straws - 7.68in / 19.5 cm',
	spec2: '1x Cleaning brush 7.87 in / 20 cm',
	spec3: 'Packing box size - 8.66 in x 2.56 in x 0.98 in / 22 cm x 6.5 cm x 2.5 cm',
	image: 'https://believebamboo.s3-us-west-1.amazonaws.com/FIN-STRAW-1-400X400.jpg', 
	image2: 'https://believebamboo.s3-us-west-1.amazonaws.com/FIN-STRAW-2-400X400.jpg', 
	image3: 'https://believebamboo.s3-us-west-1.amazonaws.com/FIN-STRAW-3-400X400.jpg',
	image4: 'https://believebamboo.s3-us-west-1.amazonaws.com/FIN-STRAW-4-400X400.jpg',
	image5: 'https://believebamboo.s3-us-west-1.amazonaws.com/FIN-STRAW-5-400X400.jpg'
)



Product.create(
	title: 'Bamboo Toothbrushes [5pc]', 
	price: 15, 
	description: 'Say no more to plastic toothbrushes and prepare to take on the sustainable initiative with this 100% organic bamboo toothbrush. With 5 pieces included all individually wrapped these make perfect gifts for friends & family.', 
	image: 'https://believebamboo.s3-us-west-1.amazonaws.com/FIN-TOOTH-1-400X400.jpg', 
	image2: 'https://believebamboo.s3-us-west-1.amazonaws.com/FIN-TOOTH-2-400X400.jpg',
	image3: 'https://believebamboo.s3-us-west-1.amazonaws.com/FIN-TOOTH-3-400X400.jpg',
	image4: 'https://believebamboo.s3-us-west-1.amazonaws.com/FIN-TOOTH-4-400X400.jpg', 
	image5: 'https://believebamboo.s3-us-west-1.amazonaws.com/FIN-TOOTH-5-400X400.jpg',
	spec1: '5x Bamboo Toothbrushes',
	spec2: '19.5 cm x 3 cm x 1.5 cm',
	spec3: 'Weight: 10g'
)



Product.create(
	title: 'Bamboo Cutlery Set [Full]', 
	price: 20,
	description: 'This all inclusive all bamboo cutlery set is perfect for all your travel needs. Wrapped up in a floral patterned fabric these utensils are sure to bring the life to any picnic!', 
	image: 'https://believebamboo.s3-us-west-1.amazonaws.com/FIN-CUTLERY-1-400X400.jpg', 
	image2: 'https://believebamboo.s3-us-west-1.amazonaws.com/FIN-CUTLERY-2-400X400.jpg', 
	image3: 'https://believebamboo.s3-us-west-1.amazonaws.com/FIN-CUTLERY-3-400X400.jpg',
	image4: 'https://believebamboo.s3-us-west-1.amazonaws.com/FIN-CUTLERY-4-400X400.jpg',
	image5: 'https://believebamboo.s3-us-west-1.amazonaws.com/FIN-CUTLERY-5-400X400.jpg',
	spec1: 'Fork, Knife, Spoon, Chopsticks, Straw, Cleaning brush',
	spec2: '7.8 in / 20 cm',
	spec3: 'Dishwasher safe / Handwash recommended'
)

Product.create(
	title: 'Bamboo Coaster Set [6pc]', 
	price: 20, 
	description: "This 6 piece set is a perfect addition to any household.  Handcrafted from selected raw bamboo these lotus design coasters are not only elegant, but also 
	durable.  Measuring just under 4 inches (10 cm) in diameter these coasters add a stylish addition to any kitchen/living room set.", 
	image: 'https://believebamboo.s3-us-west-1.amazonaws.com/FIN-COASTER-1-400X400.jpg', 
	image2: 'https://believebamboo.s3-us-west-1.amazonaws.com/FIN-COASTER-2-400X400.jpg', 
	image3: 'https://believebamboo.s3-us-west-1.amazonaws.com/FIN-COASTER-3-400X400.jpg', 
	image4: 'https://believebamboo.s3-us-west-1.amazonaws.com/FIN-COASTER-4-400X400.jpg', 
	image5: 'https://believebamboo.s3-us-west-1.amazonaws.com/FIN-COASTER-5-400X400.jpg',
	spec1: '4 in x 4 in',
	spec2: '10 cm x 10 cm',
	spec3: 'non-slip x heat-resistant'
)

# Reviews
# Product 1 (straws)

Review.create(
	name: 'Ash',
	avatar: 'https://ae01.alicdn.com/kf/UTB8YNtDxv2JXKJkSanrq6y3lVXaW.jpg',
	country: 'UK',
	comments: 'These bad boys are my new go-to straw.  They are not all the same color but thats okay each one lasts for weeks.',
	stars: 5,
	product_id: 1
	)

Review.create(
	name: 'Gary',
	avatar: 'https://anobium.files.wordpress.com/2013/05/dsc_0411.jpg?w=584',
	comments: 'These straws are legit! 5 stars I have only used 1 for the last month just make sure to clean them with the brush before using them you can even throw them in the dishwasher!',
	stars: 5,
	country: 'US',
	product_id: 1
	)

Review.create(
	name: 'Danny C.',
	avatar: 'https://pbs.twimg.com/profile_images/426550101033500672/OxfjQN52_400x400.jpeg',
	country: 'CN',
	comments: ' very good bamboo is very sturdy like metal but unlike metal straws these dont hurt you in the teeth.. delivery took long time 3 week',
	stars: 4,
	product_id: 1,
	)

Review.create(
	name: 'Barry S.',
	avatar: 'https://ae01.alicdn.com/kf/UTB8Knc0wYPJXKJkSafSq6yqUXXav.jpg',
	country: 'BR',
	comments: 'Very good price and the shipping costs were reasonable albeit delivery could have been a bit faster',
	stars: 4,
	product_id: 1
	)

Review.create(
	name: 'Leah',
	avatar: 'https://s3-us-west-2.amazonaws.com/snap-sale/20180324200210/no-avatar.png',
	country: 'US',
	comments: '',
	stars: 4,
	product_id: 1
	)

Review.create(
	name: 'DaveW',
	avatar: 'https://s3-us-west-2.amazonaws.com/snap-sale/20180324200210/no-avatar.png',
	country: 'US',
	comments: 'good product by a good company its game over for plastics',
	stars: 5,
	product_id: 1
	)

Review.create(
	name: 'Jack',
	avatar: 'https://s3-us-west-2.amazonaws.com/snap-sale/20180324200210/no-avatar.png',
	country: 'US',
	comments: '',
	stars: 5,
	product_id: 1
	)

Review.create(
	name: 'CP',
	avatar: 'https://ae01.alicdn.com/kf/UTB8ExbAxpfJXKJkSamHq6zLyVXaa.jpg',
	country: 'US',
	comments: 'I always loved bamboos design and asthetic and these straws are no different very unique very cool',
	stars: 5,
	product_id: 1
	)

# Product 2 (toothbrushes)
