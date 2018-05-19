require 'test_helper'

class ProductPacksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_pack = product_packs(:one)
  end

  test "should get index" do
    get product_packs_url
    assert_response :success
  end

  test "should get new" do
    get new_product_pack_url
    assert_response :success
  end

  test "should create product_pack" do
    assert_difference('ProductPack.count') do
      post product_packs_url, params: { product_pack: { price: @product_pack.price, quantity: @product_pack.quantity } }
    end

    assert_redirected_to product_pack_url(ProductPack.last)
  end

  test "should show product_pack" do
    get product_pack_url(@product_pack)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_pack_url(@product_pack)
    assert_response :success
  end

  test "should update product_pack" do
    patch product_pack_url(@product_pack), params: { product_pack: { price: @product_pack.price, quantity: @product_pack.quantity } }
    assert_redirected_to product_pack_url(@product_pack)
  end

  test "should destroy product_pack" do
    assert_difference('ProductPack.count', -1) do
      delete product_pack_url(@product_pack)
    end

    assert_redirected_to product_packs_url
  end
end
