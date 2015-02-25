class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
    @lists = List.all
    @additionals = Additional.all
  end

  # GET /products/1
  # GET /products/1.json
  def show

  end

  # GET /products/new
  def new
    @product = Product.new
    @additional = Additional.new
    @lists = List.all
    @timeservices = Timeservice.all
    @additionals = Additional.all
  end

  # GET /products/1/edit
  def edit
    @lists = List.all
    @timeservices = Timeservice.all
    @additionals = Additional.all
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    @product.user_id = current_user.id
       
    respond_to do |format|
      if @product.save
        format.html { redirect_to user_product_path(current_user, @product), notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to user_product_path(current_user, @product), notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to user_products_path(current_user), notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end
   

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:list_id, :category_id, :photo, :name, :age_range_from, :age_range_to, :timeservice_id, :maxcapacity_id, :base_price, :option_transport, :transport_rate_id, :options_extra_time, :description_extra_time, :options_extra_kid_string, :cost_extra_kid, :max_extra_kid, :options_additional, :additionals_id, :user_id)
    end

  end
