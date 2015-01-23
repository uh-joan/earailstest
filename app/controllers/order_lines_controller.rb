class OrderLinesController < ApplicationController
  before_action :set_order_line, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @order_lines = OrderLine.all
    respond_with(@order_lines)
  end

  def show
    respond_with(@order_line)
  end

  def new
    @order_line = OrderLine.new
    respond_with(@order_line)
  end

  def edit
  end

  def create
    @order_line = OrderLine.new(order_line_params)
    @order_line.save
    respond_with(@order_line)
  end

  def update
    @order_line.update(order_line_params)
    respond_with(@order_line)
  end

  def destroy
    @order_line.destroy
    respond_with(@order_line)
  end

  private
    def set_order_line
      @order_line = OrderLine.find(params[:id])
    end

    def order_line_params
      params.require(:order_line).permit(:text, :dealText, :customerNote, :total, :price, :discount, :addonCost, :quantity, :deleted, :order_id, :user_id)
    end
end
