require 'test_helper'

class ProductmainsControllerTest < ActionController::TestCase
  setup do
    @productmain = productmains(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:productmains)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create productmain" do
    assert_difference('Productmain.count') do
      post :create, productmain: { name: @productmain.name }
    end

    assert_redirected_to productmain_path(assigns(:productmain))
  end

  test "should show productmain" do
    get :show, id: @productmain
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @productmain
    assert_response :success
  end

  test "should update productmain" do
    put :update, id: @productmain, productmain: { name: @productmain.name }
    assert_redirected_to productmain_path(assigns(:productmain))
  end

  test "should destroy productmain" do
    assert_difference('Productmain.count', -1) do
      delete :destroy, id: @productmain
    end

    assert_redirected_to productmains_path
  end
end
