class SalesOrderTypesController < ApplicationController
  before_action :set_sales_order_type, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @sales_order_types = SalesOrderType.all
    respond_with(@sales_order_types)
  end

  def show
    respond_with(@sales_order_type)
  end

  def new
    @sales_order_type = SalesOrderType.new
    respond_with(@sales_order_type)
  end

  def edit
  end

  def create
    @sales_order_type = SalesOrderType.new(sales_order_type_params)
    @sales_order_type.save
    respond_with(@sales_order_type)
  end

  def update
    @sales_order_type.update(sales_order_type_params)
    respond_with(@sales_order_type)
  end

  def destroy
    @sales_order_type.destroy
    respond_with(@sales_order_type)
  end

  private
    def set_sales_order_type
      @sales_order_type = SalesOrderType.find(params[:id])
    end

    def sales_order_type_params
      params.require(:sales_order_type).permit(:name, :user_id)
    end
end
