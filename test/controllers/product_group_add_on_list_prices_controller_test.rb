require 'test_helper'

class ProductGroupAddOnListPricesControllerTest < ActionController::TestCase
  setup do
    @group_addon_list_price = product_group_add_on_list_prices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:group_addon_list_prices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create group_addon_list_price" do
    assert_difference('GroupAddonListPrice.count') do
      post :create, group_addon_list_price: { cost: @group_addon_list_price.cost, deleted: @group_addon_list_price.deleted, enabled: @group_addon_list_price.enabled, pr_cat_size_id: @group_addon_list_price.pr_cat_size_id, pr_gr_adon_li_id: @group_addon_list_price.pr_gr_adon_li_id, prices: @group_addon_list_price.prices, product_add_on_id: @group_addon_list_price.product_add_on_id, product_group_id: @group_addon_list_price.product_group_id, user_id: @group_addon_list_price.user_id }
    end

    assert_redirected_to product_group_add_on_list_price_path(assigns(:group_addon_list_price))
  end

  test "should show group_addon_list_price" do
    get :show, id: @group_addon_list_price
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @group_addon_list_price
    assert_response :success
  end

  test "should update group_addon_list_price" do
    patch :update, id: @group_addon_list_price, group_addon_list_price: { cost: @group_addon_list_price.cost, deleted: @group_addon_list_price.deleted, enabled: @group_addon_list_price.enabled, pr_cat_size_id: @group_addon_list_price.pr_cat_size_id, pr_gr_adon_li_id: @group_addon_list_price.pr_gr_adon_li_id, prices: @group_addon_list_price.prices, product_add_on_id: @group_addon_list_price.product_add_on_id, product_group_id: @group_addon_list_price.product_group_id, user_id: @group_addon_list_price.user_id }
    assert_redirected_to product_group_add_on_list_price_path(assigns(:group_addon_list_price))
  end

  test "should destroy group_addon_list_price" do
    assert_difference('GroupAddonListPrice.count', -1) do
      delete :destroy, id: @group_addon_list_price
    end

    assert_redirected_to product_group_add_on_list_prices_path
  end
end
