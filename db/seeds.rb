# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


users = User.create([
  {
    username: "user1",
    email: "user1@gmail.com",
    password: "12345678",
    password_confirmation: "123456",
  },
  {
    username: "user2",
    email: "user2@gmail.com",
    password: "12345678",
    password_confirmation: "123456",
  },
  {
    username: "user3",
    email: "user3@gmail.com",
    password: "12345678",
    password_confirmation: "123456",
  }
])