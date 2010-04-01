require 'test_helper'

class ProductExchangesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_exchanges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_exchange" do
    assert_difference('ProductExchange.count') do
      post :create, :product_exchange => { }
    end

    assert_redirected_to product_exchange_path(assigns(:product_exchange))
  end

  test "should show product_exchange" do
    get :show, :id => product_exchanges(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => product_exchanges(:one).to_param
    assert_response :success
  end

  test "should update product_exchange" do
    put :update, :id => product_exchanges(:one).to_param, :product_exchange => { }
    assert_redirected_to product_exchange_path(assigns(:product_exchange))
  end

  test "should destroy product_exchange" do
    assert_difference('ProductExchange.count', -1) do
      delete :destroy, :id => product_exchanges(:one).to_param
    end

    assert_redirected_to product_exchanges_path
  end
end
