require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "creating a Product" do
    visit products_url
    click_on "New Product"

    check "Bestseller" if @product.bestSeller
    fill_in "Company", with: @product.company
    fill_in "Delivery", with: @product.delivery
    fill_in "Delivery time", with: @product.delivery_time
    fill_in "Description", with: @product.description
    fill_in "Image", with: @product.image
    fill_in "Name", with: @product.name
    fill_in "Oldprice", with: @product.oldPrice
    fill_in "Price", with: @product.price
    fill_in "Product attributes", with: @product.product_attributes
    fill_in "Quality", with: @product.quality
    fill_in "Stock", with: @product.stock
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "updating a Product" do
    visit products_url
    click_on "Edit", match: :first

    check "Bestseller" if @product.bestSeller
    fill_in "Company", with: @product.company
    fill_in "Delivery", with: @product.delivery
    fill_in "Delivery time", with: @product.delivery_time
    fill_in "Description", with: @product.description
    fill_in "Image", with: @product.image
    fill_in "Name", with: @product.name
    fill_in "Oldprice", with: @product.oldPrice
    fill_in "Price", with: @product.price
    fill_in "Product attributes", with: @product.product_attributes
    fill_in "Quality", with: @product.quality
    fill_in "Stock", with: @product.stock
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "destroying a Product" do
    visit products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product was successfully destroyed"
  end
end
