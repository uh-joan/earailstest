require 'test_helper'

class ItemAddonsControllerTest < ActionController::TestCase
  setup do
    @item_addon = item_addons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:item_addons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item_addon" do
    assert_difference('ItemAddon.count') do
      post :create, item_addon: { addon_id: @item_addon.addon_id, default: @item_addon.default, included: @item_addon.included, item_id: @item_addon.item_id }
    end

    assert_redirected_to item_addon_path(assigns(:item_addon))
  end

  test "should show item_addon" do
    get :show, id: @item_addon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item_addon
    assert_response :success
  end

  test "should update item_addon" do
    patch :update, id: @item_addon, item_addon: { addon_id: @item_addon.addon_id, default: @item_addon.default, included: @item_addon.included, item_id: @item_addon.item_id }
    assert_redirected_to item_addon_path(assigns(:item_addon))
  end

  test "should destroy item_addon" do
    assert_difference('ItemAddon.count', -1) do
      delete :destroy, id: @item_addon
    end

    assert_redirected_to item_addons_path
  end
end
