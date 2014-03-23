require 'test_helper'

class MenstoresControllerTest < ActionController::TestCase
  setup do
    @menstore = menstores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:menstores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create menstore" do
    assert_difference('Menstore.count') do
      post :create, menstore: {  }
    end

    assert_redirected_to menstore_path(assigns(:menstore))
  end

  test "should show menstore" do
    get :show, id: @menstore
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @menstore
    assert_response :success
  end

  test "should update menstore" do
    put :update, id: @menstore, menstore: {  }
    assert_redirected_to menstore_path(assigns(:menstore))
  end

  test "should destroy menstore" do
    assert_difference('Menstore.count', -1) do
      delete :destroy, id: @menstore
    end

    assert_redirected_to menstores_path
  end
end
