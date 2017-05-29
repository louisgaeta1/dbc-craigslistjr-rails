# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  category = { :name => Faker::Job.field }
  Category.create(category)
end

Category.all.each do |category|
  3.times do
    article_info = { :title => Faker::Job.title, :description => Faker::GameOfThrones.character, :email => Faker::Internet.safe_email, :price => rand(1.00..1000.00).round(2) }
    category.articles.create(article_info)
  end
end
