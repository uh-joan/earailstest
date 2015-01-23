require 'test_helper'

class ProductGroupsControllerTest < ActionController::TestCase
  setup do
    @group = product_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:Groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create group" do
    assert_difference('Group.count') do
      post :create, group: { deleted: @group.deleted, description: @group.description, displayIndex: @group.displayIndex, enabled: @group.enabled, headerImagePath: @group.headerImagePath, name: @group.name, onlineViewLabel: @group.onlineViewLabel, posViewLabel: @group.posViewLabel, posViewLabel: @group.posViewLabel, product_category_id: @group.product_category_id, user_id: @group.user_id, visibleOnPos: @group.visibleOnPos, visibleOnline: @group.visibleOnline }
    end

    assert_redirected_to product_group_path(assigns(:group))
  end

  test "should show group" do
    get :show, id: @group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @group
    assert_response :success
  end

  test "should update group" do
    patch :update, id: @group, group: { deleted: @group.deleted, description: @group.description, displayIndex: @group.displayIndex, enabled: @group.enabled, headerImagePath: @group.headerImagePath, name: @group.name, onlineViewLabel: @group.onlineViewLabel, posViewLabel: @group.posViewLabel, posViewLabel: @group.posViewLabel, product_category_id: @group.product_category_id, user_id: @group.user_id, visibleOnPos: @group.visibleOnPos, visibleOnline: @group.visibleOnline }
    assert_redirected_to product_group_path(assigns(:group))
  end

  test "should destroy group" do
    assert_difference('Group.count', -1) do
      delete :destroy, id: @group
    end

    assert_redirected_to product_groups_path
  end
end
