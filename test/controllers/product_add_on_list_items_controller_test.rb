require 'test_helper'

class ProductAddOnListItemsControllerTest < ActionController::TestCase
  setup do
    @addon_list_item = product_add_on_list_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:addon_list_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create addon_list_item" do
    assert_difference('AddonListItem.count') do
      post :create, addon_list_item: { user_id: @addon_list_item.user_id }
    end

    assert_redirected_to product_add_on_list_item_path(assigns(:addon_list_item))
  end

  test "should show addon_list_item" do
    get :show, id: @addon_list_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @addon_list_item
    assert_response :success
  end

  test "should update addon_list_item" do
    patch :update, id: @addon_list_item, addon_list_item: { user_id: @addon_list_item.user_id }
    assert_redirected_to product_add_on_list_item_path(assigns(:addon_list_item))
  end

  test "should destroy addon_list_item" do
    assert_difference('AddonListItem.count', -1) do
      delete :destroy, id: @addon_list_item
    end

    assert_redirected_to product_add_on_list_items_path
  end
end
