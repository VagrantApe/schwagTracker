class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  def index
    @orders = Order.paginate(page: params[:page], per_page: 10)
  end

  def show
    @line_items = @order.line_items
    @line_item = LineItem.new
  end

  def new
    @order = Order.new
  end

  def edit
    @line_items = @order.line_items
    @line_item = LineItem.new
  end

  def create
    @order = Order.new(order_params)
    @order.received = false
    respond_to do |format|
      if @order.save
        format.html { redirect_to edit_order_path(@order), notice: 'Order was successfully created.' }
        format.js
      else
        format.html { render action: 'new' }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.js
      else
        format.html { render action: 'edit' }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url }
      format.js
    end
  end

private
  def set_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:received, :invoice_num)
  end
end
