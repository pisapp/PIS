require 'test_helper'

class MaterialTypesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:material_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create material_type" do
    assert_difference('MaterialType.count') do
      post :create, :material_type => { }
    end

    assert_redirected_to material_type_path(assigns(:material_type))
  end

  test "should show material_type" do
    get :show, :id => material_types(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => material_types(:one).to_param
    assert_response :success
  end

  test "should update material_type" do
    put :update, :id => material_types(:one).to_param, :material_type => { }
    assert_redirected_to material_type_path(assigns(:material_type))
  end

  test "should destroy material_type" do
    assert_difference('MaterialType.count', -1) do
      delete :destroy, :id => material_types(:one).to_param
    end

    assert_redirected_to material_types_path
  end
end
