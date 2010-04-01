require 'test_helper'

class MaterialExchangesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:material_exchanges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create material_exchange" do
    assert_difference('MaterialExchange.count') do
      post :create, :material_exchange => { }
    end

    assert_redirected_to material_exchange_path(assigns(:material_exchange))
  end

  test "should show material_exchange" do
    get :show, :id => material_exchanges(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => material_exchanges(:one).to_param
    assert_response :success
  end

  test "should update material_exchange" do
    put :update, :id => material_exchanges(:one).to_param, :material_exchange => { }
    assert_redirected_to material_exchange_path(assigns(:material_exchange))
  end

  test "should destroy material_exchange" do
    assert_difference('MaterialExchange.count', -1) do
      delete :destroy, :id => material_exchanges(:one).to_param
    end

    assert_redirected_to material_exchanges_path
  end
end
