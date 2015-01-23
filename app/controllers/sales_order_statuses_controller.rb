class SalesOrderStatusesController < ApplicationController
  before_action :set_sales_order_status, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @sales_order_statuses = SalesOrderStatus.all
    respond_with(@sales_order_statuses)
  end

  def show
    respond_with(@sales_order_status)
  end

  def new
    @sales_order_status = SalesOrderStatus.new
    respond_with(@sales_order_status)
  end

  def edit
  end

  def create
    @sales_order_status = SalesOrderStatus.new(sales_order_status_params)
    @sales_order_status.save
    respond_with(@sales_order_status)
  end

  def update
    @sales_order_status.update(sales_order_status_params)
    respond_with(@sales_order_status)
  end

  def destroy
    @sales_order_status.destroy
    respond_with(@sales_order_status)
  end

  private
    def set_sales_order_status
      @sales_order_status = SalesOrderStatus.find(params[:id])
    end

    def sales_order_status_params
      params.require(:sales_order_status).permit(:name, :user_id)
    end
end
