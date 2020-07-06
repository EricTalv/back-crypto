require 'test_helper'

class CryptoItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crypto_item = crypto_items(:one)
  end

  test "should get index" do
    get crypto_items_url, as: :json
    assert_response :success
  end

  test "should create crypto_item" do
    assert_difference('CryptoItem.count') do
      post crypto_items_url, params: { crypto_item: { amount: @crypto_item.amount, crypto_currency: @crypto_item.crypto_currency, date_of_purchase: @crypto_item.date_of_purchase, wallet_location: @crypto_item.wallet_location } }, as: :json
    end

    assert_response 201
  end

  test "should show crypto_item" do
    get crypto_item_url(@crypto_item), as: :json
    assert_response :success
  end

  test "should update crypto_item" do
    patch crypto_item_url(@crypto_item), params: { crypto_item: { amount: @crypto_item.amount, crypto_currency: @crypto_item.crypto_currency, date_of_purchase: @crypto_item.date_of_purchase, wallet_location: @crypto_item.wallet_location } }, as: :json
    assert_response 200
  end

  test "should destroy crypto_item" do
    assert_difference('CryptoItem.count', -1) do
      delete crypto_item_url(@crypto_item), as: :json
    end

    assert_response 204
  end
end
