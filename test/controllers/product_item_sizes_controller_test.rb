require 'test_helper'

class ProductItemSizesControllerTest < ActionController::TestCase
  setup do
    @product_item_size = product_item_sizes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_item_sizes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_item_size" do
    assert_difference('ProductItemSize.count') do
      post :create, product_item_size: { name: @product_item_size.name, product_item_id: @product_item_size.product_item_id, user_id: @product_item_size.user_id }
    end

    assert_redirected_to product_item_size_path(assigns(:product_item_size))
  end

  test "should show product_item_size" do
    get :show, id: @product_item_size
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_item_size
    assert_response :success
  end

  test "should update product_item_size" do
    patch :update, id: @product_item_size, product_item_size: { name: @product_item_size.name, product_item_id: @product_item_size.product_item_id, user_id: @product_item_size.user_id }
    assert_redirected_to product_item_size_path(assigns(:product_item_size))
  end

  test "should destroy product_item_size" do
    assert_difference('ProductItemSize.count', -1) do
      delete :destroy, id: @product_item_size
    end

    assert_redirected_to product_item_sizes_path
  end
end
