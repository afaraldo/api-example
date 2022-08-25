# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

5.times do |i|
    Category.find_or_create_by!(name: "Categoria##{i}")
end

Category.all.each do |category|
    5.times do |i|
        Product.find_or_create_by!(name: "Producto##{i}", category_id: category.id)
    end
end



Product.all.each do |product|
    5.times do |i|
        number ||= Purchase.last.try(:number) | 1 # Set last number used in Purchase
        Purchase.create(
            date: Time.now,
            number: number,
            purchase_items_attributes: [
                {
                    quantity: 1 + rand(10),
                    product: product
                }
            ]
        )
    end
end