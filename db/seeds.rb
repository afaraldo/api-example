# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Se agradecen las seeds.

5.times do |i|
  Category.find_or_create_by!(name: "Categoria##{i}")
end

index = 0
Category.all.each do |category|
  5.times do
    index += 1
    Product.find_or_create_by!(name: "Producto##{index}", category_id: category.id)
  end
end

Product.all.each do |product|
  5.times do
    number = Purchase.last.try(:number) || 0 # Set last number used in Purchase
    Purchase.create(
      date: rand(1..20).days.ago,
      number: number + 1,
      purchase_items_attributes: [
        {
          quantity: rand(1..10),
          product: product
        }
      ]
    )
  end
end
