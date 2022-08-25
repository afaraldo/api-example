require "test_helper"

class ReportControllerTest < ActionDispatch::IntegrationTest
  test "should get most_sold_product" do
    get report_most_sold_product_url
    assert_response :success
  end
end
