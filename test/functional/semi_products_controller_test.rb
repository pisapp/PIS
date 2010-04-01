require 'test_helper'

class SemiProductsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:semi_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create semi_product" do
    assert_difference('SemiProduct.count') do
      post :create, :semi_product => { }
    end

    assert_redirected_to semi_product_path(assigns(:semi_product))
  end

  test "should show semi_product" do
    get :show, :id => semi_products(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => semi_products(:one).to_param
    assert_response :success
  end

  test "should update semi_product" do
    put :update, :id => semi_products(:one).to_param, :semi_product => { }
    assert_redirected_to semi_product_path(assigns(:semi_product))
  end

  test "should destroy semi_product" do
    assert_difference('SemiProduct.count', -1) do
      delete :destroy, :id => semi_products(:one).to_param
    end

    assert_redirected_to semi_products_path
  end
end
