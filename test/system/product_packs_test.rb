require "application_system_test_case"

class ProductPacksTest < ApplicationSystemTestCase
  setup do
    @product_pack = product_packs(:one)
  end

  test "visiting the index" do
    visit product_packs_url
    assert_selector "h1", text: "Product Packs"
  end

  test "creating a Product pack" do
    visit product_packs_url
    click_on "New Product Pack"

    fill_in "Price", with: @product_pack.price
    fill_in "Quantity", with: @product_pack.quantity
    click_on "Create Product pack"

    assert_text "Product pack was successfully created"
    click_on "Back"
  end

  test "updating a Product pack" do
    visit product_packs_url
    click_on "Edit", match: :first

    fill_in "Price", with: @product_pack.price
    fill_in "Quantity", with: @product_pack.quantity
    click_on "Update Product pack"

    assert_text "Product pack was successfully updated"
    click_on "Back"
  end

  test "destroying a Product pack" do
    visit product_packs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product pack was successfully destroyed"
  end
end
