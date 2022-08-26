class ReportController < ApplicationController
  # Reivew
  # - Me parece bien la implementación usando el ROW_NUMBER
  # - No me queda claro si la implementación correcta era utilizando el SUM(purchase_items.quantity)
  # - Bien al agregarle filtros y el uso de la columna date.
  # - Mejor si se hubiése implementado
  #   * strong_params.
  #   * indices respecto a fechas y/ índices compuestos.
  def most_sold_product
    inner_query = Purchase
      .select('
        products.name as product_name,
        categories.name as category_name,
        purchases.date,
        products.category_id,
        purchase_items.product_id,
        SUM(purchase_items.quantity) as total,
        ROW_NUMBER () OVER (
          PARTITION BY products.category_id
          ORDER BY SUM(purchase_items.quantity) DESC
        ) rank')
    .joins(purchase_items: [product: :category])
    .group('purchase_items.product_id')

    @purchases = Purchase
      .select('category_name, product_name, total')
      .from(inner_query, :inner_query)
      .where("rank <= 3") # three most sold

    @purchases = @purchases.where("product_id = ?", params[:product_id]) if params[:product_id]
    @purchases = @purchases.where("category_id = ?", params[:category_id]) if params[:category_id]
    @purchases = @purchases.where("date >= ?", params[:date_lteq]) if params[:date_lteq]
    @purchases = @purchases.where("date <= ?", params[:date_gteq]) if params[:date_gteq]

    render json: @purchases
  end
end
