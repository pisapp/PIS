require 'test_helper'

class QuantityUnitsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:quantity_units)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create quantity_unit" do
    assert_difference('QuantityUnit.count') do
      post :create, :quantity_unit => { }
    end

    assert_redirected_to quantity_unit_path(assigns(:quantity_unit))
  end

  test "should show quantity_unit" do
    get :show, :id => quantity_units(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => quantity_units(:one).to_param
    assert_response :success
  end

  test "should update quantity_unit" do
    put :update, :id => quantity_units(:one).to_param, :quantity_unit => { }
    assert_redirected_to quantity_unit_path(assigns(:quantity_unit))
  end

  test "should destroy quantity_unit" do
    assert_difference('QuantityUnit.count', -1) do
      delete :destroy, :id => quantity_units(:one).to_param
    end

    assert_redirected_to quantity_units_path
  end
end
