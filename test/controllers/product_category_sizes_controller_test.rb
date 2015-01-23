require 'test_helper'

class ProductCategorySizesControllerTest < ActionController::TestCase
  setup do
    @category_size = product_category_sizes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:CategorySizes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create category_size" do
    assert_difference('CategorySize.count') do
      post :create, category_size: { postfixLabelOnline: @category_size.postfixLabelOnline, postfixLabelPos: @category_size.postfixLabelPos, postfixLabelPrint: @category_size.postfixLabelPrint, prefixLabelOnline: @category_size.prefixLabelOnline, prefixLabelPos: @category_size.prefixLabelPos, prefixLabelPrint: @category_size.prefixLabelPrint, productCategory_id: @category_size.productCategory_id }
    end

    assert_redirected_to product_category_size_path(assigns(:category_size))
  end

  test "should show category_size" do
    get :show, id: @category_size
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @category_size
    assert_response :success
  end

  test "should update category_size" do
    patch :update, id: @category_size, category_size: { postfixLabelOnline: @category_size.postfixLabelOnline, postfixLabelPos: @category_size.postfixLabelPos, postfixLabelPrint: @category_size.postfixLabelPrint, prefixLabelOnline: @category_size.prefixLabelOnline, prefixLabelPos: @category_size.prefixLabelPos, prefixLabelPrint: @category_size.prefixLabelPrint, productCategory_id: @category_size.productCategory_id }
    assert_redirected_to product_category_size_path(assigns(:category_size))
  end

  test "should destroy category_size" do
    assert_difference('CategorySize.count', -1) do
      delete :destroy, id: @category_size
    end

    assert_redirected_to product_category_sizes_path
  end
end
