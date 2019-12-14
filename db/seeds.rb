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
	image: 'https://believebamboo.s3-us-west-1.amazonaws.com/FIN-COASTER-5-400X400.jpg', 
	image2: 'https://believebamboo.s3-us-west-1.amazonaws.com/FIN-COASTER-2-400X400.jpg', 
	image3: 'https://believebamboo.s3-us-west-1.amazonaws.com/FIN-COASTER-3-400X400.jpg', 
	image4: 'https://believebamboo.s3-us-west-1.amazonaws.com/FIN-COASTER-4-400X400.jpg', 
	image5: 'https://believebamboo.s3-us-west-1.amazonaws.com/FIN-COASTER-1-400X400.jpg',
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
	avatar: 'https://ae01.alicdn.com/kf/UTB8fRXew22JXKJkSanrq6y3lVXaQ.jpg',
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
Review.create(
name: 'James L',
avatar: 'https://ae01.alicdn.com/kf/U01ef0f28254c4be1bc45035f09512523K.jpg',
country: 'US',
comments: 'bought these for the whole fam and everyone loves them so far',
stars: 5,
product_id: 2
)

Review.create(
name: 'Sally',
avatar: 'https://ae01.alicdn.com/kf/U6f46672d72694594a8d5c1acdb3d0387D.jpg',
country: 'US',
comments: 'the shape takes a little getting used too, but feels good to be using something biodegradable',
stars: 4,
product_id: 2
)

Review.create(
name: 'JP',
avatar: 'https://ae01.alicdn.com/kf/Ub8daf349fd6a451db5c88fb12a35a3722.jpg',
country: 'GE',
comments: '5 inside the package good deal for the family',
stars: 5,
product_id: 2
)

Review.create(
name: 'R.W.W',
avatar: 'https://s3-us-west-2.amazonaws.com/snap-sale/20180324200210/no-avatar.png',
country: 'RU',
comments: 'Good quality inside box however package was a little damage but they give me full refund',
stars: 5,
product_id: 2
)

# Product 3 (cutlery set)

Review.create(
name: 'Jo',
avatar: 'https://ae01.alicdn.com/kf/U89a001e067894387aa0980647effbd5a3.jpg',
country: 'US',
comments: 'This set is AWESOME!!! I literally take it everywhere. The bamboo tastes very natural and I am considering switching all my cutlery to bamboo!',
stars: 5,
product_id: 3
)

Review.create(
name: 'Lenn',
avatar: 'https://ae01.alicdn.com/kf/U89fb230f6468465c864bde7df3b34f5aV.jpg',
country: 'US',
comments: 'This set is perfect we for our camping trips.  Easy to clean and does not get sticky like metal silverware',
stars: 5,
product_id: 3
)

Review.create(
name: 'Kar',
avatar: 'https://s3-us-west-2.amazonaws.com/snap-sale/20180324200210/no-avatar.png',
country: 'MX',
comments: 'just like described',
stars: 4,
product_id: 3
)

Review.create(
name: 'Til',
avatar: 'https://ae01.alicdn.com/kf/Ucf94ddc1c17d47a4beb9f9da97ebf02fi.jpg',
country: 'CA',
comments: 'The shipping was fast and tracking was accurate this is my favorite item we bought here highly recommend',
stars: 5,
product_id: 3
)

Review.create(
name: 'pete',
avatar: 'https://s3-us-west-2.amazonaws.com/snap-sale/20180324200210/no-avatar.png',
country: 'CN',
comments: 'good chopstick has good grip',
stars: 5,
product_id: 3
)

# Product 4 (coasters)

Review.create(
name: 'Str.',
avatar: 'https://ae01.alicdn.com/kf/HTB1sdDbXXY7gK0jSZKzq6yikpXat.jpg',
country: 'CA',
comments: 'good beautiful quality the bamboo being raw smells a little funny but goes away',
stars: 4,
product_id: 4
)

Review.create(
name: 'drew',
avatar: 'https://ae01.alicdn.com/kf/Udb6712b810c84777b1d5b145fe4f3908O.jpg',
country: 'US',
comments: 'Good quality the package was a little damaged, but thats not really their fault but still 4 stars',
stars: 4,
product_id: 4
)


Review.create(
name: 'alex',
avatar: 'https://s3-us-west-2.amazonaws.com/snap-sale/20180324200210/no-avatar.png',
country: 'US',
comments: 'Beautiful',
stars: 5,
product_id: 4
)


Review.create(
name: 'pete',
avatar: 'https://s3-us-west-2.amazonaws.com/snap-sale/20180324200210/no-avatar.png',
country: 'US',
comments: '',
stars: 5,
product_id: 4
)



Review.create(
name: 'Sally',
avatar: 'https://s3-us-west-2.amazonaws.com/snap-sale/20180324200210/no-avatar.png',
country: 'US',
comments: 'the shape takes a little getting used too, but feels good to be using something biodegradable',
stars: 5,
product_id: 3
)
