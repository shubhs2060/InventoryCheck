require "application_system_test_case"

class OrderProductHistoriesTest < ApplicationSystemTestCase
  setup do
    @order_product_history = order_product_histories(:one)
  end

  test "visiting the index" do
    visit order_product_histories_url
    assert_selector "h1", text: "Order Product Histories"
  end

  test "creating a Order product history" do
    visit order_product_histories_url
    click_on "New Order Product History"

    fill_in "Price", with: @order_product_history.price
    fill_in "Quantity", with: @order_product_history.quantity
    click_on "Create Order product history"

    assert_text "Order product history was successfully created"
    click_on "Back"
  end

  test "updating a Order product history" do
    visit order_product_histories_url
    click_on "Edit", match: :first

    fill_in "Price", with: @order_product_history.price
    fill_in "Quantity", with: @order_product_history.quantity
    click_on "Update Order product history"

    assert_text "Order product history was successfully updated"
    click_on "Back"
  end

  test "destroying a Order product history" do
    visit order_product_histories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order product history was successfully destroyed"
  end
end
