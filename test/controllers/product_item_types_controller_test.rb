require 'test_helper'

class ProductItemTypesControllerTest < ActionController::TestCase
  setup do
    @product_item_type = product_item_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_item_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_item_type" do
    assert_difference('ProductItemType.count') do
      post :create, product_item_type: { name: @product_item_type.name, user_id: @product_item_type.user_id }
    end

    assert_redirected_to product_item_type_path(assigns(:product_item_type))
  end

  test "should show product_item_type" do
    get :show, id: @product_item_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_item_type
    assert_response :success
  end

  test "should update product_item_type" do
    patch :update, id: @product_item_type, product_item_type: { name: @product_item_type.name, user_id: @product_item_type.user_id }
    assert_redirected_to product_item_type_path(assigns(:product_item_type))
  end

  test "should destroy product_item_type" do
    assert_difference('ProductItemType.count', -1) do
      delete :destroy, id: @product_item_type
    end

    assert_redirected_to product_item_types_path
  end
end
