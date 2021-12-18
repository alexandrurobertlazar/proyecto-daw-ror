require "test_helper"

class CategoryControllerTest < ActionDispatch::IntegrationTest
  test "should get category_grid" do
    get category_category_grid_url
    assert_response :success
  end
end
