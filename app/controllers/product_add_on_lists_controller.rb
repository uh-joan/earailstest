class ProductAddOnListsController < ApplicationController
  before_action :set_product_add_on_list, only: [:show, :edit, :update, :destroy]

  # GET /product_add_on_lists
  # GET /product_add_on_lists.json
  def index
    @product_add_on_lists = ProductAddOnList.all
  end

  # GET /product_add_on_lists/1
  # GET /product_add_on_lists/1.json
  def show
  end

  # GET /product_add_on_lists/new
  def new
    @product_add_on_list = ProductAddOnList.new
  end

  # GET /product_add_on_lists/1/edit
  def edit
  end

  # POST /product_add_on_lists
  # POST /product_add_on_lists.json
  def create
    @product_add_on_list = ProductAddOnList.new(product_add_on_list_params)

    respond_to do |format|
      if @product_add_on_list.save
        format.html { redirect_to @product_add_on_list, notice: 'Product add on list was successfully created.' }
        format.json { render :show, status: :created, location: @product_add_on_list }
      else
        format.html { render :new }
        format.json { render json: @product_add_on_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_add_on_lists/1
  # PATCH/PUT /product_add_on_lists/1.json
  def update
    respond_to do |format|
      if @product_add_on_list.update(product_add_on_list_params)
        format.html { redirect_to @product_add_on_list, notice: 'Product add on list was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_add_on_list }
      else
        format.html { render :edit }
        format.json { render json: @product_add_on_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_add_on_lists/1
  # DELETE /product_add_on_lists/1.json
  def destroy
    @product_add_on_list.destroy
    respond_to do |format|
      format.html { redirect_to product_add_on_lists_url, notice: 'Product add on list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_add_on_list
      @product_add_on_list = ProductAddOnList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_add_on_list_params
      params.require(:product_add_on_list).permit(:name, :onlineViewLabel, :posViewLabel, :sortListByIndex, :sortListByName, :multipleSelection, :enabled, :user_id)
    end
end
