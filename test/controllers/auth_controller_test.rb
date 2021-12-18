require "test_helper"

class AuthControllerTest < ActionDispatch::IntegrationTest
  test "should get user" do
    get auth_user_url
    assert_response :success
  end
end
