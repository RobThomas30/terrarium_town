
i = 1
2.times do User.create!( 
  email: "#{i}@gmail.com", 
  password: 'password', 
  password_confirmation: 'password'
)
  i += 1
end

puts "Users Created 👦👩"

User.find(1).listings.create(
  title: "Medium",
  price: 3000,
  description: "This is a test terrarium for testing the application",
  sale_type: 1,
  size: 2,
  image: '/images/med1.jpg'
)

User.find(1).listings.create(
  title: "Test-Terrarium-2",
  price: 15000,
  description: "This is a test terrarium for testing the application",
  sale_type: 1,
  size: 5,
  image: '/images/large1.jpg'
)

User.find(1).listings.create(
  title: "Test-Terrarium-3",
  price: nil,
  description: "This is a test terrarium for testing the application",
  sale_type: 2,
  size: 3,
  image: '/images/small1.jpg'
)

User.find(1).listings.create(
  title: "Test-Terrarium-4",
  price: nil,
  description: "This is a test terrarium for testing the application",
  sale_type: 3,
  size: 2,
  image: '/images/small2.jpg'
)

User.find(2).listings.create(
  title: "Test-Terrarium-5",
  price: nil,
  description: "This is a test terrarium for testing the application",
  sale_type: 3,
  size: 2,
  image: '/images/xlarge1.jpg'
)

User.find(2).listings.create(
  title: "Test-Terrarium-6",
  price: nil,
  description: "This is a test terrarium for testing the application",
  sale_type: 3,
  size: 2,
  image: '/images/xlarge2.jpg'
)

User.find(2).listings.create(
  title: "Test-Terrarium-7",
  price: nil,
  description: "This is a test terrarium for testing the application",
  sale_type: 3,
  size: 2,
  image: '/images/xsmall1.jpg'
)

puts "Terrarium's Created 🌱"