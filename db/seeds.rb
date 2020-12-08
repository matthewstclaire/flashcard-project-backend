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

10.times do
Question.create(body: "This is a hard question.",
    answer: "It really is.",
    category_id: rand(1..4),
    question_id: rand(1..10))
end

Question.create(body: "1+1",
answer: "2",
category_id: 1,
question_id: 1)

Question.create(body: "1+2",
answer: "3",
category_id: 1,
question_id: 2)

Question.create(body: "1+3",
answer: "4",
category_id: 1,
question_id: 3)

Question.create(body: "10-1",
answer: "9",
category_id: 2,
question_id: 1)

Question.create(body: "10-2",
answer: "8",
category_id: 2,
question_id: 2)
