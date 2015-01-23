class ProductCategorySizesController < ApplicationController
  before_action :set_product_category_size, only: [:show, :edit, :update, :destroy]

  # GET /product_category_sizes
  # GET /product_category_sizes.json
  def index
    @product_category_sizes = ProductCategorySize.all
  end

  # GET /product_category_sizes/1
  # GET /product_category_sizes/1.json
  def show
  end

  # GET /product_category_sizes/new
  def new
    @product_category_size = ProductCategorySize.new
  end

  # GET /product_category_sizes/1/edit
  def edit
  end

  # POST /product_category_sizes
  # POST /product_category_sizes.json
  def create
    # @category = current_user.Categories.build(product_category_params)
    #
    # how to find the current product catgory??
    #
    # @product_category_size = @current_product_category.product_categories_sizes(product_category_size_params)
    @product_category_size = ProductCategorySize.new(product_category_size_params)

    respond_to do |format|
      if @product_category_size.save
        format.html { redirect_to @product_category_size, notice: 'Product category size was successfully created.' }
        format.json { render :show, status: :created, location: @product_category_size }
      else
        format.html { render :new }
        format.json { render json: @product_category_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_category_sizes/1
  # PATCH/PUT /product_category_sizes/1.json
  def update
    respond_to do |format|
      if @product_category_size.update(product_category_size_params)
        format.html { redirect_to @product_category_size, notice: 'Product category size was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_category_size }
      else
        format.html { render :edit }
        format.json { render json: @product_category_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_category_sizes/1
  # DELETE /product_category_sizes/1.json
  def destroy
    @product_category_size.destroy
    respond_to do |format|
      format.html { redirect_to product_category_sizes_url, notice: 'Product category size was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_category_size
      @product_category_size = ProductCategorySize.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_category_size_params
      params.require(:product_category_size).permit(:prefixLabelOnline, :prefixLabelPrint, :prefixLabelPos, :postfixLabelOnline, :postfixLabelPrint, :postfixLabelPos, :product_category_id)
    end
end
