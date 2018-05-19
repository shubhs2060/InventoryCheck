class OrderProductHistoriesController < ApplicationController
  before_action :set_order_product_history, only: [:show, :edit, :update, :destroy]
  before_action :set_order_product

  # GET /order_product_histories
  # GET /order_product_histories.json
  def index
    @order_product_histories = OrderProductHistory.all
  end

  # GET /order_product_histories/1
  # GET /order_product_histories/1.json
  def show
  end

  # GET /order_product_histories/new
  def new
    @order_product_history = OrderProductHistory.new
  end

  # GET /order_product_histories/1/edit
  def edit
  end

  # POST /order_product_histories
  # POST /order_product_histories.json
  def create
    @order_product_history = OrderProductHistory.new(order_product_history_params)

    respond_to do |format|
      if @order_product_history.save
        format.html { redirect_to @order_product_history, notice: 'Order product history was successfully created.' }
        format.json { render :show, status: :created, location: @order_product_history }
      else
        format.html { render :new }
        format.json { render json: @order_product_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_product_histories/1
  # PATCH/PUT /order_product_histories/1.json
  def update
    respond_to do |format|
      if @order_product_history.update(order_product_history_params)
        format.html { redirect_to @order_product_history, notice: 'Order product history was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_product_history }
      else
        format.html { render :edit }
        format.json { render json: @order_product_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_product_histories/1
  # DELETE /order_product_histories/1.json
  def destroy
    @order_product_history.destroy
    respond_to do |format|
      format.html { redirect_to order_product_order_product_histories_url(order_product_id: @order_product.id), notice: 'Order product history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_order_product
      @order_product = OrderProduct.find(params[:order_product_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_order_product_history
      @order_product_history = OrderProductHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_product_history_params
      params.require(:order_product_history).permit(:order_product_id, :quantity, :price_per_pack)
    end
end
