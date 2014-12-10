require 'test_helper'

class ProductAddOnListItemsControllerTest < ActionController::TestCase
  setup do
    @product_add_on_list_item = product_add_on_list_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_add_on_list_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_add_on_list_item" do
    assert_difference('ProductAddOnListItem.count') do
      post :create, product_add_on_list_item: { user_id: @product_add_on_list_item.user_id }
    end

    assert_redirected_to product_add_on_list_item_path(assigns(:product_add_on_list_item))
  end

  test "should show product_add_on_list_item" do
    get :show, id: @product_add_on_list_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_add_on_list_item
    assert_response :success
  end

  test "should update product_add_on_list_item" do
    patch :update, id: @product_add_on_list_item, product_add_on_list_item: { user_id: @product_add_on_list_item.user_id }
    assert_redirected_to product_add_on_list_item_path(assigns(:product_add_on_list_item))
  end

  test "should destroy product_add_on_list_item" do
    assert_difference('ProductAddOnListItem.count', -1) do
      delete :destroy, id: @product_add_on_list_item
    end

    assert_redirected_to product_add_on_list_items_path
  end
end
