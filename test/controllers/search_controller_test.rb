require "test_helper"

class SearchControllerTest < ActionDispatch::IntegrationTest
  test "should get search_grid" do
    get search_search_grid_url
    assert_response :success
  end
end
