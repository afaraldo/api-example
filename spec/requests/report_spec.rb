require 'rails_helper'

RSpec.describe "Reports", type: :request do
  describe "GET /index" do

    it "return response status 200" do
      get report_most_sold_product_path

      expect(response).to have_http_status(:success)
    end

    it "renders JSON object" do
      get report_most_sold_product_path
      
      expect(response.content_type).to eq "application/json; charset=utf-8"
    end

    it "should returns 3 products for each category " do
      get report_most_sold_product_path

      data = JSON.parse(response.body)
      
      categories = Category.all
      registers_by_category = 3
      register_total = categories.size * registers_by_category

      expect(data.count).to eq(register_total)
    end
  end
end
