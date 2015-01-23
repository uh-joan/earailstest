class ProductItemSizesController < ApplicationController
  before_action :set_product_item_size, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @product_item_sizes = ProductItemSize.all
    respond_with(@product_item_sizes)
  end

  def show
    respond_with(@product_item_size)
  end

  def new
    @product_item_size = ProductItemSize.new
    respond_with(@product_item_size)
  end

  def edit
  end

  def create
    @product_item_size = ProductItemSize.new(product_item_size_params)
    @product_item_size.save
    respond_with(@product_item_size)
  end

  def update
    @product_item_size.update(product_item_size_params)
    respond_with(@product_item_size)
  end

  def destroy
    @product_item_size.destroy
    respond_with(@product_item_size)
  end

  private
    def set_product_item_size
      @product_item_size = ProductItemSize.find(params[:id])
    end

    def product_item_size_params
      params.require(:product_item_size).permit(:name, :product_item_id, :user_id)
    end
end
