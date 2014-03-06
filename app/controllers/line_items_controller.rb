class LineItemsController < ApplicationController
  before_action :set_line_item, only: [:show, :edit, :update, :destroy]
  before_action :set_order, only: [:new, :update, :create, :edit, :destroy]
  load_and_authorize_resource

  def index
    @order
  end

  def show
  end

  def new
    @line_item = LineItem.new
  end

  def edit
  end

  def create
    @line_item = @order.line_items.new(line_item_params)

    respond_to do |format|
      if @line_item.save
        format.html { redirect_to @order, notice: 'Line item was successfully created.' }
        format.js
      else
        format.html { render action: 'new' }
        format.json { render json: @line_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @line_item.update(line_item_params)
        format.html { redirect_to @order, notice: 'Line item was successfully updated.' }
        format.js
      else
        format.html { render action: 'edit' }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @line_item.destroy
    respond_to do |format|
      format.html { redirect_to line_items_url }
      format.js
    end
  end

private

  def set_line_item
    @line_item = LineItem.find(params[:id])
  end

  def line_item_params
    params.require(:line_item).permit(:product_id, :order_id, :qty)
  end

  def set_order
    @order = Order.find(params[:order_id])
  end
end
