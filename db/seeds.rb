# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


users = User.create([
  {
    id: 1,
    first_name: "Denilson",
    last_name: "Velasquez",
    email: "admin@gmail.com",
    password: "password",
    role: "staff"
  },
  {
    id: 2,
    first_name: "Nathalie",
    last_name: "Clinton",
    email: "user2@gmail.com",
    password: "password",
  },
  {
    id: 3,
    first_name: "James",
    last_name: "Hamilton",
    email: "user3@gmail.com",
    password: "password",
  },
])

profiles = Profile.create([
  {
    user_id: 1,
  },
  {
    user_id: 2,
  },
  {
    user_id: 3,
  },
])

cats = Cat.create([
  {
    id:1,
    name: "Rainbow",
    gender: "Female",
    breed: "Van Cat",
    age: "14 months",
    color: "White",
    image_url: "https://upload.wikimedia.org/wikipedia/commons/b/b1/VAN_CAT.png",
    description: "She has impressive eyes that will draw you to adopt her. This cat deserves it all!",
    good_with_cats: "Unknown",
    good_with_dogs: "No",
    declawed: "No",
    special_needs: "No",
    available: "Available"
  },
  {
    id: 2,
    name: "Suzzy",
    gender: "Female",
    age: "11 months",
    color: "White",
    breed: "Persian cat",
    image_url: "https://millscreek.vet/wp-content/uploads/2020/07/white-cat-with-blue-eyes-mobile-1024x616.jpg",
    description: "This kitty loves you, please adopt her!",
    good_with_cats: "Yes",
    good_with_dogs: "Unknown",
    declawed: "No",
    special_needs: "No",
    available: "Available"
  },
  {
    id: 3,
    name: "Bobby",
    gender: "Male",
    age: "14 months",
    color: "Brown & White",
    breed: "Birman",
    image_url: "https://d17fnq9dkz9hgj.cloudfront.net/uploads/2012/11/100901720-cat-adoption-first-30-days-632x475.jpg",
    description: "A wonder male cat just waiting on a new home.",
    good_with_cats: "Yes",
    good_with_dogs: "Unknown",
    declawed: "No",
    special_needs: "No",
    available: "Available"
  },
  {
    id: 4,
    name: "Mittens",
    gender: "Male",
    age: "12 months",
    color: "White",
    breed: "Norwegian Forest Cat",
    image_url: "https://upload.wikimedia.org/wikipedia/commons/b/b9/Mittens_the_cat_of_wellington.jpg",
    description: "A wonder male cat just waiting on a new home.",
    good_with_cats: "Yes",
    good_with_dogs: "Unknown",
    declawed: "No",
    special_needs: "No",
    available: "Available"
  },
])