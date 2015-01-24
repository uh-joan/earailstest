require 'test_helper'

class ProductAddOnsControllerTest < ActionController::TestCase
  setup do
    @addon = product_add_ons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:addons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create addon" do
    assert_difference('Addon.count') do
      post :create, addon: { displayIndex: @addon.displayIndex, name: @addon.name, onlineViewLabel: @addon.onlineViewLabel, posViewLabel: @addon.posViewLabel, printViewLabel: @addon.printViewLabel, user_id: @addon.user_id, visibleOnline: @addon.visibleOnline, visiblePos: @addon.visiblePos }
    end

    assert_redirected_to product_add_on_path(assigns(:addon))
  end

  test "should show addon" do
    get :show, id: @addon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @addon
    assert_response :success
  end

  test "should update addon" do
    patch :update, id: @addon, addon: { displayIndex: @addon.displayIndex, name: @addon.name, onlineViewLabel: @addon.onlineViewLabel, posViewLabel: @addon.posViewLabel, printViewLabel: @addon.printViewLabel, user_id: @addon.user_id, visibleOnline: @addon.visibleOnline, visiblePos: @addon.visiblePos }
    assert_redirected_to product_add_on_path(assigns(:addon))
  end

  test "should destroy addon" do
    assert_difference('Addon.count', -1) do
      delete :destroy, id: @addon
    end

    assert_redirected_to product_add_ons_path
  end
end
