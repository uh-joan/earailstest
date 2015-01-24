class TopCategoriesController < ApplicationController
  before_action :set_product_category, only: [:show, :edit, :update, :destroy]
  # before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
  # before_action :correct_user,   only: [:edit, :update]

  # GET /top_categories
  # GET /top_categories.json
  def index
    @top_categories = TopCategory.all
  end

  # GET /top_categories/1
  # GET /top_categories/1.json
  def show
  end

  # GET /top_categories/new
  def new
    @top_category = TopCategory.new
  end

  # GET /top_categories/1/edit
  def edit
  end

  # POST /top_categories
  # POST /top_categories.json
  def create
    @top_category = TopCategory.new(product_category_params)
    # @top_category = current_user.top_categories.build(product_category_params)

    respond_to do |format|
      if @top_category.save
        # flash[:success] = "product top_category created!"
        format.html { redirect_to @top_category, notice: 'Product top_category was successfully created.' }
        format.json { render :show, status: :created, location: @top_category }
      else
        format.html { render :new }
        format.json { render json: @top_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /top_categories/1
  # PATCH/PUT /top_categories/1.json
  def update
    respond_to do |format|
      if @top_category.update(product_category_params)
        format.html { redirect_to @top_category, notice: 'Product top_category was successfully updated.' }
        format.json { render :show, status: :ok, location: @top_category }
      else
        format.html { render :edit }
        format.json { render json: @top_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /top_categories/1
  # DELETE /top_categories/1.json
  def destroy
    @top_category.destroy
    respond_to do |format|
      format.html { redirect_to top_categories_url, notice: 'Product top_category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_category
      @top_category = TopCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_category_params
      params.require(:top_category).permit(:name, :shortDescription, :enabled, :deleted, :user_id)
    end
end
