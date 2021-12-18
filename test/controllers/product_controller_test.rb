require "test_helper"

class ProductControllerTest < ActionDispatch::IntegrationTest
  test "should get product" do
    get product_product_url
    assert_response :success
  end
end
