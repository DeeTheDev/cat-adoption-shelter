# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


users = User.create([
  {
    first_name: "Dee",
    last_name: "Vee"
    username: "user1",
    email: "user1@gmail.com",
    password: "12345678",
    password_confirmation: "12345678",
  },
  {
    first_name: "Steph",
    last_name: "Dee"
    username: "user2",
    email: "user2@gmail.com",
    password: "12345678",
    password_confirmation: "12345678",
  },
  {
    first_name: "David",
    last_name: "Herman"
    username: "user3",
    email: "user3@gmail.com",
    password: "12345678",
    password_confirmation: "12345678",
  }
])

users = Cat.create([
  {
    name: "Mikey",
    gender: "Male",
    breed: "Unknown",
    age: "12 months",
    color: "White",
    image_url: "randomimage.com/url_path.jpg",
    description: "A wonder male cat just waiting on a new home.",
    good_with_cats: "Unknown",
    good_with_dogs: "Unknown",
    declawed: "No",
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
    name: "Bob",
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
    name: "Speedy",
    gender: "Male",
    age: "12 months",
    color: "White",
    breed: "Unknown"
    image_url: "randomimage.com/url_path.jpg",
    description: "A wonder male cat just waiting on a new home.",
    good_with_cats: "Yes",
    good_with_dogs: "Unknown",
    declawed: "No",
    special_needs: "No"
  },
])