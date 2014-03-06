class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
    respond_to do |format|
      format.html {@products}
      format.json {render json: @products}
    end
  end

  def show
  end

  def new
    @product = Product.new
  end

  def edit
  end

  def create
    @product = Product.new(product_params)
    @product.min_order_qty ||= 0
    @product.lead_time ||= 0
    @product.image_url ||= ''
    @product.sku ||= ''
    @product.notes ||= ''
    @product.qty_on_hand ||= 0
    @product.qty_on_order ||= 0
    @product.set_up_fee ||= 0

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render action: 'show', status: :created, location: @product }
      else
        format.html { render action: 'new' }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url }
      format.json { head :no_content }
    end
  end

private

  def set_product
    @product = Product.find(params[:id])
  end


  def product_params
    params.require(:product).permit(:name, :vendor, :price, :min_order_qty, :lead_time, :image_url, :sku, :notes, :qty_on_hand, :qty_on_order, :set_up_fee)
  end

end
