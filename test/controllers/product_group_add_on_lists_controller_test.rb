require 'test_helper'

class ProductGroupAddOnListsControllerTest < ActionController::TestCase
  setup do
    @group_addon_list = product_group_add_on_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:GroupAddonLists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create group_addon_list" do
    assert_difference('GroupAddonList.count') do
      post :create, group_addon_list: { displayIndex: @group_addon_list.displayIndex, logicIndex: @group_addon_list.logicIndex, name: @group_addon_list.name, product_group_id: @group_addon_list.product_group_id, required: @group_addon_list.required, user_id: @group_addon_list.user_id }
    end

    assert_redirected_to product_group_add_on_list_path(assigns(:group_addon_list))
  end

  test "should show group_addon_list" do
    get :show, id: @group_addon_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @group_addon_list
    assert_response :success
  end

  test "should update group_addon_list" do
    patch :update, id: @group_addon_list, group_addon_list: { displayIndex: @group_addon_list.displayIndex, logicIndex: @group_addon_list.logicIndex, name: @group_addon_list.name, product_group_id: @group_addon_list.product_group_id, required: @group_addon_list.required, user_id: @group_addon_list.user_id }
    assert_redirected_to product_group_add_on_list_path(assigns(:group_addon_list))
  end

  test "should destroy group_addon_list" do
    assert_difference('GroupAddonList.count', -1) do
      delete :destroy, id: @group_addon_list
    end

    assert_redirected_to product_group_add_on_lists_path
  end
end
