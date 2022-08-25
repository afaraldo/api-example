class ReportController < ApplicationController
  
  def most_sold_product
    inner_query = Product.select('
        categories.name AS category_name,
        products.name AS product_name,
        SUM(purchase_items.quantity) as total,
        ROW_NUMBER () OVER (
          PARTITION BY products.category_id
          ORDER BY SUM(purchase_items.quantity) DESC
        ) rank')
      .joins(purchase_items: :purchase)
      .joins(:category)
        .group('products.id')

    products = Product
      .select('product_name, category_name, total, rank')
        .from(inner_query, :inner_query)
        .where("rank <= 3")

    render json: products
  end
end
