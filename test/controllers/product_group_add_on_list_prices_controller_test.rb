require 'test_helper'

class ProductGroupAddOnListPricesControllerTest < ActionController::TestCase
  setup do
    @product_group_add_on_list_price = product_group_add_on_list_prices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_group_add_on_list_prices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_group_add_on_list_price" do
    assert_difference('ProductGroupAddOnListPrice.count') do
      post :create, product_group_add_on_list_price: { cost: @product_group_add_on_list_price.cost, deleted: @product_group_add_on_list_price.deleted, enabled: @product_group_add_on_list_price.enabled, pr_cat_size_id: @product_group_add_on_list_price.pr_cat_size_id, pr_gr_adon_li_id: @product_group_add_on_list_price.pr_gr_adon_li_id, prices: @product_group_add_on_list_price.prices, product_add_on_id: @product_group_add_on_list_price.product_add_on_id, product_group_id: @product_group_add_on_list_price.product_group_id, user_id: @product_group_add_on_list_price.user_id }
    end

    assert_redirected_to product_group_add_on_list_price_path(assigns(:product_group_add_on_list_price))
  end

  test "should show product_group_add_on_list_price" do
    get :show, id: @product_group_add_on_list_price
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_group_add_on_list_price
    assert_response :success
  end

  test "should update product_group_add_on_list_price" do
    patch :update, id: @product_group_add_on_list_price, product_group_add_on_list_price: { cost: @product_group_add_on_list_price.cost, deleted: @product_group_add_on_list_price.deleted, enabled: @product_group_add_on_list_price.enabled, pr_cat_size_id: @product_group_add_on_list_price.pr_cat_size_id, pr_gr_adon_li_id: @product_group_add_on_list_price.pr_gr_adon_li_id, prices: @product_group_add_on_list_price.prices, product_add_on_id: @product_group_add_on_list_price.product_add_on_id, product_group_id: @product_group_add_on_list_price.product_group_id, user_id: @product_group_add_on_list_price.user_id }
    assert_redirected_to product_group_add_on_list_price_path(assigns(:product_group_add_on_list_price))
  end

  test "should destroy product_group_add_on_list_price" do
    assert_difference('ProductGroupAddOnListPrice.count', -1) do
      delete :destroy, id: @product_group_add_on_list_price
    end

    assert_redirected_to product_group_add_on_list_prices_path
  end
end
