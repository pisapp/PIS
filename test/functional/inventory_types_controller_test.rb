require 'test_helper'

class InventoryTypesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inventory_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inventory_type" do
    assert_difference('InventoryType.count') do
      post :create, :inventory_type => { }
    end

    assert_redirected_to inventory_type_path(assigns(:inventory_type))
  end

  test "should show inventory_type" do
    get :show, :id => inventory_types(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => inventory_types(:one).to_param
    assert_response :success
  end

  test "should update inventory_type" do
    put :update, :id => inventory_types(:one).to_param, :inventory_type => { }
    assert_redirected_to inventory_type_path(assigns(:inventory_type))
  end

  test "should destroy inventory_type" do
    assert_difference('InventoryType.count', -1) do
      delete :destroy, :id => inventory_types(:one).to_param
    end

    assert_redirected_to inventory_types_path
  end
end
