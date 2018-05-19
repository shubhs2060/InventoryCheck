class ProductPacksController < ApplicationController
  before_action :set_product_pack, only: [:show, :edit, :update, :destroy]

  # GET /product_packs
  # GET /product_packs.json
  def index
    @product_packs = ProductPack.all
  end

  # GET /product_packs/1
  # GET /product_packs/1.json
  def show
  end

  # GET /product_packs/new
  def new
    @product_pack = ProductPack.new(product_id: @product.id)

  end

  # GET /product_packs/1/edit
  def edit
  end

  # POST /product_packs
  # POST /product_packs.json
  def create
    @product_pack = ProductPack.new(product_pack_params)

    respond_to do |format|
      if @product_pack.save
        format.html { redirect_to @product_pack, notice: 'Product pack was successfully created.' }
        format.json { render :show, status: :created, location: @product_pack }
      else
        format.html { render :new }
        format.json { render json: @product_pack.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_packs/1
  # PATCH/PUT /product_packs/1.json
  def update
    respond_to do |format|
      if @product_pack.update(product_pack_params)
        format.html { redirect_to @product_pack, notice: 'Product pack was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_pack }
      else
        format.html { render :edit }
        format.json { render json: @product_pack.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_packs/1
  # DELETE /product_packs/1.json
  def destroy
    @product_pack.destroy
    respond_to do |format|
      format.html { redirect_to product_packs_url, notice: 'Product pack was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_pack
      @product_pack = ProductPack.find(params[:id])
    end
    def set_product
      @product = Product.find(params[:product_id]) if params[:product_id]
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def product_pack_params
      params.require(:product_pack).permit(:quantity, :price)
    end
end
