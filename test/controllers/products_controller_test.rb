require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get new" do
    get new_product_url
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post products_url, params: { product: { bestSeller: @product.bestSeller, company: @product.company, delivery: @product.delivery, delivery_time: @product.delivery_time, description: @product.description, image: @product.image, name: @product.name, oldPrice: @product.oldPrice, price: @product.price, product_attributes: @product.product_attributes, quality: @product.quality, stock: @product.stock } }
    end

    assert_redirected_to product_url(Product.last)
  end

  test "should show product" do
    get product_url(@product)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url(@product)
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), params: { product: { bestSeller: @product.bestSeller, company: @product.company, delivery: @product.delivery, delivery_time: @product.delivery_time, description: @product.description, image: @product.image, name: @product.name, oldPrice: @product.oldPrice, price: @product.price, product_attributes: @product.product_attributes, quality: @product.quality, stock: @product.stock } }
    assert_redirected_to product_url(@product)
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end
