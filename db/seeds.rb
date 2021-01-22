# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


users = User.create([
  {
    first_name: "Junior",
    last_name: "Wilmington",
    email: "user1@gmail.com",
    password: "12345678",
    password_confirmation: "12345678",
  },
  {
    first_name: "Stephanie",
    last_name: "Hernandez",
    email: "user2@gmail.com",
    password: "12345678"
  },
  {
    first_name: "David",
    last_name: "Herman",
    email: "user3@gmail.com",
    password: "12345678"
  }
])

cats = Cat.create([
  {
    name: "Rainbow",
    gender: "Female",
    breed: "Van Cat",
    age: "14 months",
    color: "White",
    image_url: "https://upload.wikimedia.org/wikipedia/commons/b/b1/VAN_CAT.png",
    description: "She has impressive eyes that will draw you to adopt her. This cat deserves it all!",
    good_with_cats: "Unknown",
    good_with_dogs: "No",
    declawed: "Yes",
    special_needs: "No"
  },
  {
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
    special_needs: "No"
  },
  {
    name: "Bobby",
    gender: "Male",
    age: "14 months",
    color: "Brown & White",
    breed: "Birman",
    image_url: "https://d17fnq9dkz9hgj.cloudfront.net/uploads/2012/11/100901720-cat-adoption-first-30-days-632x475.jpg",
    description: "A wonder male cat just waiting on a new home.",
    good_with_cats: "Yes",
    good_with_dogs: "Unknown",
    declawed: "Yes",
    special_needs: "No"
  },
  {
    name: "Mittens",
    gender: "Male",
    age: "12 months",
    color: "White",
    breed: "Norwegian Forest Cat",
    image_url: "https://upload.wikimedia.org/wikipedia/commons/b/b9/Mittens_the_cat_of_wellington.jpg",
    description: "A wonder male cat just waiting on a new home.",
    good_with_cats: "Yes",
    good_with_dogs: "Unknown",
    declawed: "Yes",
    special_needs: "No"
  },
])