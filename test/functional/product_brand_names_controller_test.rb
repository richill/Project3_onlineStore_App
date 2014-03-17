require 'test_helper'

class ProductBrandNamesControllerTest < ActionController::TestCase
  setup do
    @product_brand_name = product_brand_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_brand_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_brand_name" do
    assert_difference('ProductBrandName.count') do
      post :create, product_brand_name: { name: @product_brand_name.name }
    end

    assert_redirected_to product_brand_name_path(assigns(:product_brand_name))
  end

  test "should show product_brand_name" do
    get :show, id: @product_brand_name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_brand_name
    assert_response :success
  end

  test "should update product_brand_name" do
    put :update, id: @product_brand_name, product_brand_name: { name: @product_brand_name.name }
    assert_redirected_to product_brand_name_path(assigns(:product_brand_name))
  end

  test "should destroy product_brand_name" do
    assert_difference('ProductBrandName.count', -1) do
      delete :destroy, id: @product_brand_name
    end

    assert_redirected_to product_brand_names_path
  end
end
