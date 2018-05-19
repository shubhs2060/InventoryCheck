require 'test_helper'

class OrderProductHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order_product_history = order_product_histories(:one)
  end

  test "should get index" do
    get order_product_histories_url
    assert_response :success
  end

  test "should get new" do
    get new_order_product_history_url
    assert_response :success
  end

  test "should create order_product_history" do
    assert_difference('OrderProductHistory.count') do
      post order_product_histories_url, params: { order_product_history: { price: @order_product_history.price, quantity: @order_product_history.quantity } }
    end

    assert_redirected_to order_product_history_url(OrderProductHistory.last)
  end

  test "should show order_product_history" do
    get order_product_history_url(@order_product_history)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_product_history_url(@order_product_history)
    assert_response :success
  end

  test "should update order_product_history" do
    patch order_product_history_url(@order_product_history), params: { order_product_history: { price: @order_product_history.price, quantity: @order_product_history.quantity } }
    assert_redirected_to order_product_history_url(@order_product_history)
  end

  test "should destroy order_product_history" do
    assert_difference('OrderProductHistory.count', -1) do
      delete order_product_history_url(@order_product_history)
    end

    assert_redirected_to order_product_histories_url
  end
end
