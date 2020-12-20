# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all
Question.destroy_all

Category.create(topic: "Addition")
Category.create(topic: "Subtraction")
Category.create(topic: "Multiplication")
Category.create(topic: "Division")

Question.create(body: "1+1",
answer: "2",
category_id: 1)

Question.create(body: "1+2",
answer: "3",
category_id: 1)

Question.create(body: "1+3",
answer: "4",
category_id: 1)

Question.create(body: "10-1",
answer: "9",
category_id: 2)

Question.create(body: "10-2",
answer: "8",
category_id: 2)

Question.create(body: "1 x 2",
answer: "2",
category_id: 3)

Question.create(body: "1 x 3",
answer: "3",
category_id: 3)

Question.create(body: "10 % 2",
answer: "5",
category_id: 4)

Question.create(body: "10 % 5",
answer: "2",
category_id: 4)
