class CategoriesController < ApplicationController
  before_action :set_product_category, only: [:show, :edit, :update, :destroy]
  # before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
  # before_action :correct_user,   only: [:edit, :update]

  # GET /Categories
  # GET /Categories.json
  def index
    @categories = Category.all
  end

  # GET /Categories/1
  # GET /Categories/1.json
  def show
  end

  # GET /Categories/new
  def new
    @category = Category.new
  end

  # GET /Categories/1/edit
  def edit
  end

  # POST /Categories
  # POST /Categories.json
  def create
    @category = Category.new(product_category_params)
    # @category = current_user.Categories.build(product_category_params)

    respond_to do |format|
      if @category.save
        # flash[:success] = "product category created!"
        format.html { redirect_to @category, notice: 'Product category was successfully created.' }
        format.json { render :show, status: :created, location: @category }
      else
        format.html { render :new }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /Categories/1
  # PATCH/PUT /Categories/1.json
  def update
    respond_to do |format|
      if @category.update(product_category_params)
        format.html { redirect_to @category, notice: 'Product category was successfully updated.' }
        format.json { render :show, status: :ok, location: @category }
      else
        format.html { render :edit }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /Categories/1
  # DELETE /Categories/1.json
  def destroy
    @category.destroy
    respond_to do |format|
      format.html { redirect_to product_categories_url, notice: 'Product category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_category
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_category_params
      params.require(:category).permit(:name, :shortDescription, :enabled, :deleted, :user_id)
    end
end
