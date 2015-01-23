class SalesOrderSourcesController < ApplicationController
  before_action :set_sales_order_source, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @sales_order_sources = SalesOrderSource.all
    respond_with(@sales_order_sources)
  end

  def show
    respond_with(@sales_order_source)
  end

  def new
    @sales_order_source = SalesOrderSource.new
    respond_with(@sales_order_source)
  end

  def edit
  end

  def create
    @sales_order_source = SalesOrderSource.new(sales_order_source_params)
    @sales_order_source.save
    respond_with(@sales_order_source)
  end

  def update
    @sales_order_source.update(sales_order_source_params)
    respond_with(@sales_order_source)
  end

  def destroy
    @sales_order_source.destroy
    respond_with(@sales_order_source)
  end

  private
    def set_sales_order_source
      @sales_order_source = SalesOrderSource.find(params[:id])
    end

    def sales_order_source_params
      params.require(:sales_order_source).permit(:name, :user_id)
    end
end
