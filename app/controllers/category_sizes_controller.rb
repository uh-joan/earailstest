class CategorySizesController < ApplicationController
  before_action :set_product_category_size, only: [:show, :edit, :update, :destroy]

  # GET /category_sizes
  # GET /category_sizes.json
  def index
    @category_sizes = CategorySize.all
  end

  # GET /category_sizes/1
  # GET /category_sizes/1.json
  def show
  end

  # GET /category_sizes/new
  def new
    @category_size = CategorySize.new
  end

  # GET /category_sizes/1/edit
  def edit
  end

  # POST /category_sizes
  # POST /category_sizes.json
  def create
    # @top_category = current_user.top_categories.build(product_category_params)
    #
    # how to find the current product category??
    #
    # @category_size = @current_product_category.product_categories_sizes(product_category_size_params)
    @category_size = CategorySize.new(product_category_size_params)

    respond_to do |format|
      if @category_size.save
        format.html { redirect_to @category_size, notice: 'Product top_category size was successfully created.' }
        format.json { render :show, status: :created, location: @category_size }
      else
        format.html { render :new }
        format.json { render json: @category_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /category_sizes/1
  # PATCH/PUT /category_sizes/1.json
  def update
    respond_to do |format|
      if @category_size.update(product_category_size_params)
        format.html { redirect_to @category_size, notice: 'Product top_category size was successfully updated.' }
        format.json { render :show, status: :ok, location: @category_size }
      else
        format.html { render :edit }
        format.json { render json: @category_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /category_sizes/1
  # DELETE /category_sizes/1.json
  def destroy
    @category_size.destroy
    respond_to do |format|
      format.html { redirect_to category_sizes_url, notice: 'Product top_category size was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_category_size
      @category_size = CategorySize.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_category_size_params
      params.require(:category_size).permit(:prefixLabelOnline, :prefixLabelPrint, :prefixLabelPos, :postfixLabelOnline, :postfixLabelPrint, :postfixLabelPos, :group_id, :user_id)
    end
end
