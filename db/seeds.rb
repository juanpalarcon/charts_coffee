# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


1200.times do
    Sale.create(
        coffee_type: Faker::Coffee.blend_name,
        origin: Faker::Coffee.origin,
        price: rand(1990..5490),
        date: Faker::Date.between( from: '2017-01-01', to: Date.today
        )
    )
end