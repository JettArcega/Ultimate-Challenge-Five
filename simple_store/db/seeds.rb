# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all
product = Product.create( price: 10 )
product_1 = Product.create( title: "hi")
puts Product.count
puts "There's a #{product.inspect}"

676.times do 
    random_products = Product.create(   title: Faker::Food.fruits,
                                        description: Faker::Food.description,
                                        price: Faker::Number.decimal(2),
                                        stock_quantity: Faker::Number.number) 
end
puts Product.count