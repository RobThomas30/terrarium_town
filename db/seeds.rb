puts "---------------------------------"
puts "Making Users who make Terrariums"
i = 1
2.times do User.create!( 
  email: "#{i}@gmail.com", 
  password: 'password', 
  password_confirmation: 'password'
)
  i += 1
end
puts "Users Created 👉🌱👈"
puts "---------------------------------"
puts "Planting Seeds in Terrariums"
puts "---------------------------------"
User.find(1).listings.create(
  title: "Steps in a Bowl",
  price: 30,
  description: "Created using a bowl found in a thrift shop and materials collected while out on a nature walk, organised to looks like a set of stairs in the countryside.",
  sale_type: 1,
  size: 3,
  image: '/images/med1.jpg'
)
puts "🌱"
User.find(1).listings.create(
  title: "Jungle Jar",
  price: 45,
  description: "A large cookie jar filled with ferns, sticks and stones sporting an overgrown jungle look",
  sale_type: 1,
  size: 4,
  image: '/images/large1.jpg'
)
puts "🌱"
User.find(1).listings.create(
  title: "Abduction!",
  price: 35,
  description: "Mason jar with polymer clay sculptures of crash landing in a field with alien looking at a cow",
  sale_type: 1,
  size: 2,
  image: '/images/small1.jpg'
)
puts "🌱"
User.find(1).listings.create(
  title: "Life on Venus",
  price: nil,
  description: "Small bowl with venus fly trap, I grow venus fly traps and have many terrariums filled with them! Looking to trade to add some variety to my collection.",
  sale_type: 2,
  size: 2,
  image: '/images/small2.jpg'
)
puts "🌱"
User.find(2).listings.create(
  title: "Octagon",
  price: 900,
  description: "Very large octagonal terrarium with built in lighting structure.",
  sale_type: 1,
  size: 5,
  image: '/images/xlarge1.jpg'
)
puts "🌱"
User.find(2).listings.create(
  title: "Overgrown",
  price: 300,
  description: "Un-opened in years this 50 year old terrarium has only one surviving plant left that has strangled out all it's neighbors and filled the entire jar.",
  sale_type: 1,
  size: 5,
  image: '/images/xlarge2.jpg'
)
puts "🌱"
User.find(2).listings.create(
  title: "Tiny Terrariums!",
  price: 10,
  description: "I make tiny cute terrariums that you can fit anywhere, grab one fore your home, office or home office!",
  sale_type: 1,
  size: 1,
  image: '/images/xsmall1.jpg'
)
puts "---------------------------------"
puts "🌱 Terrarium's Created 🌱"
puts "---------------------------------"