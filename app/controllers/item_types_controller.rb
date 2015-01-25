class ItemTypesController < ApplicationController
  before_action :set_product_item_type, only: [:show, :edit, :update, :destroy]

  # respond_to :html

  def index
    @item_types = ItemType.all
    # respond_with(@item_types)
  end

  def show
    # respond_with(@item_type)
  end

  def new
    @item_type = ItemType.new
    # respond_with(@item_type)
  end

  def edit
  end

  def create
    @item_type = ItemType.new(product_item_type_params)
    # @item_type.save
    # respond_with(@item_type)

    respond_to do |format|
      if @item_type.save
        format.html { redirect_to @item_type, notice: 'Product item was successfully created.' }
        format.json { render :show, status: :created, location: @item_type}
      else
        format.html { render :new }
        format.json { render json: @item_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    # @item_type.update(product_item_type_params)
    # respond_with(@item_type)

    respond_to do |format|
      if @item_type.update(product_item_type_params)
        format.html { redirect_to @item_type, notice: 'Product item type was successfully updated.' }
        format.json { render :show, status: :ok, location: @item_type }
      else
        format.html { render :edit }
        format.json { render json: @item_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @item_type.destroy
    # respond_with(@item_type)
    respond_to do |format|
      format.html { redirect_to item_types_url, notice: 'Product item type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_product_item_type
      @item_type = ItemType.find(params[:id])
      # @group = Group.find(params[:id])
    end

    def product_item_type_params
      params.require(:item_type).permit(:name, :user_id)
    end
end
