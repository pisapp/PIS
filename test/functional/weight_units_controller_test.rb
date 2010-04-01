require 'test_helper'

class WeightUnitsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weight_units)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create weight_unit" do
    assert_difference('WeightUnit.count') do
      post :create, :weight_unit => { }
    end

    assert_redirected_to weight_unit_path(assigns(:weight_unit))
  end

  test "should show weight_unit" do
    get :show, :id => weight_units(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => weight_units(:one).to_param
    assert_response :success
  end

  test "should update weight_unit" do
    put :update, :id => weight_units(:one).to_param, :weight_unit => { }
    assert_redirected_to weight_unit_path(assigns(:weight_unit))
  end

  test "should destroy weight_unit" do
    assert_difference('WeightUnit.count', -1) do
      delete :destroy, :id => weight_units(:one).to_param
    end

    assert_redirected_to weight_units_path
  end
end
