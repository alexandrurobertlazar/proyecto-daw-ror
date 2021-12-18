require "test_helper"

class ArticleControllerTest < ActionDispatch::IntegrationTest
  test "should get article-about-us" do
    get article_article-about-us_url
    assert_response :success
  end
end
