class ProductAddOnListItemsController < ApplicationController
  before_action :set_product_add_on_list_item, only: [:show, :edit, :update, :destroy]

  # GET /product_add_on_list_items
  # GET /product_add_on_list_items.json
  def index
    @product_add_on_list_items = ProductAddOnListItem.all
  end

  # GET /product_add_on_list_items/1
  # GET /product_add_on_list_items/1.json
  def show
  end

  # GET /product_add_on_list_items/new
  def new
    @product_add_on_list_item = ProductAddOnListItem.new
  end

  # GET /product_add_on_list_items/1/edit
  def edit
  end

  # POST /product_add_on_list_items
  # POST /product_add_on_list_items.json
  def create
    @product_add_on_list_item = ProductAddOnListItem.new(product_add_on_list_item_params)

    respond_to do |format|
      if @product_add_on_list_item.save
        format.html { redirect_to @product_add_on_list_item, notice: 'Product add on list item was successfully created.' }
        format.json { render :show, status: :created, location: @product_add_on_list_item }
      else
        format.html { render :new }
        format.json { render json: @product_add_on_list_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_add_on_list_items/1
  # PATCH/PUT /product_add_on_list_items/1.json
  def update
    respond_to do |format|
      if @product_add_on_list_item.update(product_add_on_list_item_params)
        format.html { redirect_to @product_add_on_list_item, notice: 'Product add on list item was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_add_on_list_item }
      else
        format.html { render :edit }
        format.json { render json: @product_add_on_list_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_add_on_list_items/1
  # DELETE /product_add_on_list_items/1.json
  def destroy
    @product_add_on_list_item.destroy
    respond_to do |format|
      format.html { redirect_to product_add_on_list_items_url, notice: 'Product add on list item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_add_on_list_item
      @product_add_on_list_item = ProductAddOnListItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_add_on_list_item_params
      params.require(:product_add_on_list_item).permit(:user_id, :product_add_on_list_id, :product_add_on_id)
    end
end
