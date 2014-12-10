class ProductAddOnsController < ApplicationController
  before_action :set_product_add_on, only: [:show, :edit, :update, :destroy]

  # GET /product_add_ons
  # GET /product_add_ons.json
  def index
    @product_add_ons = ProductAddOn.all
  end

  # GET /product_add_ons/1
  # GET /product_add_ons/1.json
  def show
  end

  # GET /product_add_ons/new
  def new
    @product_add_on = ProductAddOn.new
  end

  # GET /product_add_ons/1/edit
  def edit
  end

  # POST /product_add_ons
  # POST /product_add_ons.json
  def create
    @product_add_on = ProductAddOn.new(product_add_on_params)

    respond_to do |format|
      if @product_add_on.save
        format.html { redirect_to @product_add_on, notice: 'Product add on was successfully created.' }
        format.json { render :show, status: :created, location: @product_add_on }
      else
        format.html { render :new }
        format.json { render json: @product_add_on.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_add_ons/1
  # PATCH/PUT /product_add_ons/1.json
  def update
    respond_to do |format|
      if @product_add_on.update(product_add_on_params)
        format.html { redirect_to @product_add_on, notice: 'Product add on was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_add_on }
      else
        format.html { render :edit }
        format.json { render json: @product_add_on.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_add_ons/1
  # DELETE /product_add_ons/1.json
  def destroy
    @product_add_on.destroy
    respond_to do |format|
      format.html { redirect_to product_add_ons_url, notice: 'Product add on was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_add_on
      @product_add_on = ProductAddOn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_add_on_params
      params.require(:product_add_on).permit(:name, :onlineViewLabel, :printViewLabel, :posViewLabel, :displayIndex, :visibleOnline, :visiblePos, :user_id)
    end
end
