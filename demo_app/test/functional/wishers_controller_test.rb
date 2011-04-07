require 'test_helper'

class WishersControllerTest < ActionController::TestCase
  setup do
    @wisher = wishers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wishers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wisher" do
    assert_difference('Wisher.count') do
      post :create, :wisher => @wisher.attributes
    end

    assert_redirected_to wisher_path(assigns(:wisher))
  end

  test "should show wisher" do
    get :show, :id => @wisher.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @wisher.to_param
    assert_response :success
  end

  test "should update wisher" do
    put :update, :id => @wisher.to_param, :wisher => @wisher.attributes
    assert_redirected_to wisher_path(assigns(:wisher))
  end

  test "should destroy wisher" do
    assert_difference('Wisher.count', -1) do
      delete :destroy, :id => @wisher.to_param
    end

    assert_redirected_to wishers_path
  end
end
