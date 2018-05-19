class OrderProductsController < ApplicationController
  before_action :set_order_product, only: [:show, :edit, :update, :destroy]
  before_action :set_order

  # GET /order_products
  # GET /order_products.json
  def index
    @order_products = OrderProduct.all
  end

  # GET /order_products/1
  # GET /order_products/1.json
  def show
    @order_product_histories = @order_product.order_product_histories
  end

  # GET /order_products/new
  def new
    @order_product = OrderProduct.new(order_id: @order.id, quantity: 1)
  end

  # GET /order_products/1/edit
  def edit
  end

  # POST /order_products
  # POST /order_products.json
  def create
    @order_product = OrderProduct.new(order_product_params.merge(order_id: @order.id))
    respond_to do |format|
      if @order_product.save
        format.html { redirect_to order_path(@order_product.order), notice: 'product added to order.' }
        format.json { render :show, status: :created, location: @order_product }
      else
        format.html { render :new }
        format.json { render json: @order_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_products/1
  # PATCH/PUT /order_products/1.json
  def update
    respond_to do |format|
      if @order_product.update(order_product_params)
        format.html { redirect_to order_path(@order_product.order), notice: 'Quantity updated.' }
        format.json { render :show, status: :ok, location: @order_product }
      else
        format.html { render :edit }
        format.json { render json: @order_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_products/1
  # DELETE /order_products/1.json
  def destroy
    @order_product.destroy
    respond_to do |format|
      format.html { redirect_to order_path(@order_product.order), notice: 'product removed from order.' }
      format.json { head :no_content }
    end
  end

  private
    def set_order
      @order = Order.find(params[:order_id]) if params[:order_id]
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_order_product
      @order_product = OrderProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_product_params
      params.require(:order_product).permit(:order_id, :product_id, :quantity)
    end
end
