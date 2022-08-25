require "test_helper"

class PurchaseItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @purchase_item = purchase_items(:one)
  end

  test "should get index" do
    get purchase_items_url, as: :json
    assert_response :success
  end

  test "should create purchase_item" do
    assert_difference("PurchaseItem.count") do
      post purchase_items_url, params: { purchase_item: { product_id: @purchase_item.product_id, purchase_id: @purchase_item.purchase_id, quantity: @purchase_item.quantity } }, as: :json
    end

    assert_response :created
  end

  test "should show purchase_item" do
    get purchase_item_url(@purchase_item), as: :json
    assert_response :success
  end

  test "should update purchase_item" do
    patch purchase_item_url(@purchase_item), params: { purchase_item: { product_id: @purchase_item.product_id, purchase_id: @purchase_item.purchase_id, quantity: @purchase_item.quantity } }, as: :json
    assert_response :success
  end

  test "should destroy purchase_item" do
    assert_difference("PurchaseItem.count", -1) do
      delete purchase_item_url(@purchase_item), as: :json
    end

    assert_response :no_content
  end
end
