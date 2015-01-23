class OrdersController < ApplicationController
  before_action :set_sales_order, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @orders = Order.all
    respond_with(@orders)
  end

  def show
    respond_with(@order)
  end

  def new
    @order = Order.new
    respond_with(@order)
  end

  def edit
  end

  def create
    @order = Order.new(sales_order_params)
    @order.save
    respond_with(@order)
  end

  def update
    @order.update(sales_order_params)
    respond_with(@order)
  end

  def destroy
    @order.destroy
    respond_with(@order)
  end

  private
    def set_sales_order
      @order = Order.find(params[:id])
    end

    def sales_order_params
      params.require(:order).permit(:name, :total, :subtotal, :discount, :surcharge, :enabled, :deleted, :sales_order_type_id, :sales_order_status_id, :sales_order_source_id, :user_id)
    end
end
