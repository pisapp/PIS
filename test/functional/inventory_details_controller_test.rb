require 'test_helper'

class InventoryDetailsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inventory_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inventory_detail" do
    assert_difference('InventoryDetail.count') do
      post :create, :inventory_detail => { }
    end

    assert_redirected_to inventory_detail_path(assigns(:inventory_detail))
  end

  test "should show inventory_detail" do
    get :show, :id => inventory_details(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => inventory_details(:one).to_param
    assert_response :success
  end

  test "should update inventory_detail" do
    put :update, :id => inventory_details(:one).to_param, :inventory_detail => { }
    assert_redirected_to inventory_detail_path(assigns(:inventory_detail))
  end

  test "should destroy inventory_detail" do
    assert_difference('InventoryDetail.count', -1) do
      delete :destroy, :id => inventory_details(:one).to_param
    end

    assert_redirected_to inventory_details_path
  end
end
