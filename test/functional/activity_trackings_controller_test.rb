require 'test_helper'

class ActivityTrackingsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:activity_trackings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create activity_tracking" do
    assert_difference('ActivityTracking.count') do
      post :create, :activity_tracking => { }
    end

    assert_redirected_to activity_tracking_path(assigns(:activity_tracking))
  end

  test "should show activity_tracking" do
    get :show, :id => activity_trackings(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => activity_trackings(:one).to_param
    assert_response :success
  end

  test "should update activity_tracking" do
    put :update, :id => activity_trackings(:one).to_param, :activity_tracking => { }
    assert_redirected_to activity_tracking_path(assigns(:activity_tracking))
  end

  test "should destroy activity_tracking" do
    assert_difference('ActivityTracking.count', -1) do
      delete :destroy, :id => activity_trackings(:one).to_param
    end

    assert_redirected_to activity_trackings_path
  end
end
