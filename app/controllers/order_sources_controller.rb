class OrderSourcesController < ApplicationController
  before_action :set_order_source, only: [:show, :edit, :update, :destroy]

  # GET /order_sources
  # GET /order_sources.json
  def index
    @order_sources = OrderSource.all
  end

  # GET /order_sources/1
  # GET /order_sources/1.json
  def show
  end

  # GET /order_sources/new
  def new
    @order_source = OrderSource.new
  end

  # GET /order_sources/1/edit
  def edit
  end

  # POST /order_sources
  # POST /order_sources.json
  def create
    @order_source = OrderSource.new(order_source_params)

    respond_to do |format|
      if @order_source.save
        format.html { redirect_to @order_source, notice: 'Sales order_source was successfully created.' }
        format.json { render :show, status: :created, location: @order_source }
      else
        format.html { render :new }
        format.json { render json: @order_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_sources/1
  # PATCH/PUT /order_sources/1.json
  def update
    respond_to do |format|
      if @order_source.update(order_source_params)
        format.html { redirect_to @order_source, notice: 'Sales order_source was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_source }
      else
        format.html { render :edit }
        format.json { render json: @order_source.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_sources/1
  # DELETE /order_sources/1.json
  def destroy
    @order_source.destroy
    respond_to do |format|
      format.html { redirect_to order_sources_url, notice: 'Sales order_source was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_order_source
    @order_source = OrderSource.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def order_source_params
    params.require(:order_source).permit(:name, :user_id)
  end
end