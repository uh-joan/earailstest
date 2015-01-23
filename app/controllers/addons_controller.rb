class AddonsController < ApplicationController
  before_action :set_product_add_on, only: [:show, :edit, :update, :destroy]

  # GET /Addons
  # GET /Addons.json
  def index
    @addons = Addon.all
  end

  # GET /Addons/1
  # GET /Addons/1.json
  def show
  end

  # GET /Addons/new
  def new
    @addon = Addon.new
  end

  # GET /Addons/1/edit
  def edit
  end

  # POST /Addons
  # POST /Addons.json
  def create
    @addon = Addon.new(product_add_on_params)

    respond_to do |format|
      if @addon.save
        format.html { redirect_to @addon, notice: 'Product add on was successfully created.' }
        format.json { render :show, status: :created, location: @addon }
      else
        format.html { render :new }
        format.json { render json: @addon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /Addons/1
  # PATCH/PUT /Addons/1.json
  def update
    respond_to do |format|
      if @addon.update(product_add_on_params)
        format.html { redirect_to @addon, notice: 'Product add on was successfully updated.' }
        format.json { render :show, status: :ok, location: @addon }
      else
        format.html { render :edit }
        format.json { render json: @addon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /Addons/1
  # DELETE /Addons/1.json
  def destroy
    @addon.destroy
    respond_to do |format|
      format.html { redirect_to product_add_ons_url, notice: 'Product add on was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_add_on
      @addon = Addon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_add_on_params
      params.require(:addon).permit(:name, :onlineViewLabel, :printViewLabel, :posViewLabel, :displayIndex, :visibleOnline, :visiblePos, :user_id)
    end
end
