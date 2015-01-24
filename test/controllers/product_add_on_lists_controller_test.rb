require 'test_helper'

class ProductAddOnListsControllerTest < ActionController::TestCase
  setup do
    @addon_list = product_add_on_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:addon_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create addon_list" do
    assert_difference('AddonList.count') do
      post :create, addon_list: { enabled: @addon_list.enabled, multipleSelection: @addon_list.multipleSelection, name: @addon_list.name, onlineViewLabel: @addon_list.onlineViewLabel, posViewLabel: @addon_list.posViewLabel, sortListByIndex: @addon_list.sortListByIndex, sortListByName: @addon_list.sortListByName, user_id: @addon_list.user_id }
    end

    assert_redirected_to product_add_on_list_path(assigns(:addon_list))
  end

  test "should show addon_list" do
    get :show, id: @addon_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @addon_list
    assert_response :success
  end

  test "should update addon_list" do
    patch :update, id: @addon_list, addon_list: { enabled: @addon_list.enabled, multipleSelection: @addon_list.multipleSelection, name: @addon_list.name, onlineViewLabel: @addon_list.onlineViewLabel, posViewLabel: @addon_list.posViewLabel, sortListByIndex: @addon_list.sortListByIndex, sortListByName: @addon_list.sortListByName, user_id: @addon_list.user_id }
    assert_redirected_to product_add_on_list_path(assigns(:addon_list))
  end

  test "should destroy addon_list" do
    assert_difference('AddonList.count', -1) do
      delete :destroy, id: @addon_list
    end

    assert_redirected_to product_add_on_lists_path
  end
end
