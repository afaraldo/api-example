class PurchasesController < ApplicationController
  before_action :set_purchase, only: %i[show update destroy]

  # Review:
  # - Bien con la paginación
  # - Ransack cumple
  # - Mejor si hubiéses implementado strong params
  # GET /purchases
  def index
    @q = Purchase.ransack(params[:q])
    @purchases = @q.result(distinct: true).page(params[:page]).per(params[:per_page] || 10)

    render json: @purchases
  end

  # GET /purchases/1
  def show
    render json: @purchase
  end

  # POST /purchases
  def create
    @purchase = Purchase.new(purchase_params)

    if @purchase.save
      render json: @purchase, status: :created, location: @purchase
    else
      render json: @purchase.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /purchases/1
  def update
    if @purchase.update(purchase_params)
      render json: @purchase
    else
      render json: @purchase.errors, status: :unprocessable_entity
    end
  end

  # DELETE /purchases/1
  def destroy
    @purchase.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_purchase
    @purchase = Purchase.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def purchase_params
    params.require(:purchase).permit(:date, :number, purchase_items: %i[id product_id purchase_id])
  end
end
