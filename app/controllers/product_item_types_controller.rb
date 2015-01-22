class ProductItemTypesController < ApplicationController
  before_action :set_product_item_type, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @product_item_types = ProductItemType.all
    respond_with(@product_item_types)
  end

  def show
    respond_with(@product_item_type)
  end

  def new
    @product_item_type = ProductItemType.new
    respond_with(@product_item_type)
  end

  def edit
  end

  def create
    @product_item_type = ProductItemType.new(product_item_type_params)
    @product_item_type.save
    respond_with(@product_item_type)
  end

  def update
    @product_item_type.update(product_item_type_params)
    respond_with(@product_item_type)
  end

  def destroy
    @product_item_type.destroy
    respond_with(@product_item_type)
  end

  private
    def set_product_item_type
      @product_item_type = ProductItemType.find(params[:id])
    end

    def product_item_type_params
      params.require(:product_item_type).permit(:name, :user_id)
    end
end
