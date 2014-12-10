require 'test_helper'

class ProductCategorySizesControllerTest < ActionController::TestCase
  setup do
    @product_category_size = product_category_sizes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_category_sizes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_category_size" do
    assert_difference('ProductCategorySize.count') do
      post :create, product_category_size: { postfixLabelOnline: @product_category_size.postfixLabelOnline, postfixLabelPos: @product_category_size.postfixLabelPos, postfixLabelPrint: @product_category_size.postfixLabelPrint, prefixLabelOnline: @product_category_size.prefixLabelOnline, prefixLabelPos: @product_category_size.prefixLabelPos, prefixLabelPrint: @product_category_size.prefixLabelPrint, productCategory_id: @product_category_size.productCategory_id }
    end

    assert_redirected_to product_category_size_path(assigns(:product_category_size))
  end

  test "should show product_category_size" do
    get :show, id: @product_category_size
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_category_size
    assert_response :success
  end

  test "should update product_category_size" do
    patch :update, id: @product_category_size, product_category_size: { postfixLabelOnline: @product_category_size.postfixLabelOnline, postfixLabelPos: @product_category_size.postfixLabelPos, postfixLabelPrint: @product_category_size.postfixLabelPrint, prefixLabelOnline: @product_category_size.prefixLabelOnline, prefixLabelPos: @product_category_size.prefixLabelPos, prefixLabelPrint: @product_category_size.prefixLabelPrint, productCategory_id: @product_category_size.productCategory_id }
    assert_redirected_to product_category_size_path(assigns(:product_category_size))
  end

  test "should destroy product_category_size" do
    assert_difference('ProductCategorySize.count', -1) do
      delete :destroy, id: @product_category_size
    end

    assert_redirected_to product_category_sizes_path
  end
end
