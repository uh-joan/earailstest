class ItemSizesController < ApplicationController
  before_action :set_product_item_size, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @item_sizes = ItemSize.all
    respond_with(@item_sizes)
  end

  def show
    respond_with(@item_size)
  end

  def new
    @item_size = ItemSize.new
    respond_with(@item_size)
  end

  def edit
  end

  def create
    @item_size = ItemSize.new(product_item_size_params)
    @item_size.save
    respond_with(@item_size)
  end

  def update
    @item_size.update(product_item_size_params)
    respond_with(@item_size)
  end

  def destroy
    @item_size.destroy
    respond_with(@item_size)
  end

  private
    def set_product_item_size
      @item_size = ItemSize.find(params[:id])
    end

    def product_item_size_params
      params.require(:item_size).permit(:name, :product_item_id, :user_id)
    end
end
