# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

(1..10).each do
  Blog.create(title: Faker::Beer.name, content: Faker::Hacker.say_something_smart)
end

User.create(email: "test@test.com", password: "123456", password_confirmation: "123456")