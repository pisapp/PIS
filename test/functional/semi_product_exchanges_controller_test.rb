require 'test_helper'

class SemiProductExchangesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:semi_product_exchanges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create semi_product_exchange" do
    assert_difference('SemiProductExchange.count') do
      post :create, :semi_product_exchange => { }
    end

    assert_redirected_to semi_product_exchange_path(assigns(:semi_product_exchange))
  end

  test "should show semi_product_exchange" do
    get :show, :id => semi_product_exchanges(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => semi_product_exchanges(:one).to_param
    assert_response :success
  end

  test "should update semi_product_exchange" do
    put :update, :id => semi_product_exchanges(:one).to_param, :semi_product_exchange => { }
    assert_redirected_to semi_product_exchange_path(assigns(:semi_product_exchange))
  end

  test "should destroy semi_product_exchange" do
    assert_difference('SemiProductExchange.count', -1) do
      delete :destroy, :id => semi_product_exchanges(:one).to_param
    end

    assert_redirected_to semi_product_exchanges_path
  end
end
