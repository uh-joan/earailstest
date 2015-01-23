class OrderStatusesController < ApplicationController
  before_action :set_sales_order_status, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @order_statuses = OrderStatus.all
    respond_with(@order_statuses)
  end

  def show
    respond_with(@order_status)
  end

  def new
    @order_status = OrderStatus.new
    respond_with(@order_status)
  end

  def edit
  end

  def create
    @order_status = OrderStatus.new(sales_order_status_params)
    @order_status.save
    respond_with(@order_status)
  end

  def update
    @order_status.update(sales_order_status_params)
    respond_with(@order_status)
  end

  def destroy
    @order_status.destroy
    respond_with(@order_status)
  end

  private
    def set_sales_order_status
      @order_status = OrderStatus.find(params[:id])
    end

    def sales_order_status_params
      params.require(:order_status).permit(:name, :user_id)
    end
end
