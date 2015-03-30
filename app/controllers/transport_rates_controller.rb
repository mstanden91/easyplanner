class TransportRatesController < ApplicationController
  before_action :set_transport_rate, only: [:show, :edit, :update, :destroy]

  # GET /transport_rates
  # GET /transport_rates.json
  def index
    @transport_rates = TransportRate.all
  end

  # GET /transport_rates/1
  # GET /transport_rates/1.json
  def show
    @transport_rates = TransportRate.all
  end

  # GET /transport_rates/new
  def new
    @transport_rate = TransportRate.new
  end

  # GET /transport_rates/1/edit
  def edit
  end

  # POST /transport_rates
  # POST /transport_rates.json
  def create
      @transport_rate = TransportRate.new(transport_rate_params)
      @list = List.find(params[:list_id])
      @transport_rate.list = @list
      @transport_rate.save
    redirect_to user_list_url(current_user, @list)
 end

  # PATCH/PUT /transport_rates/1
  # PATCH/PUT /transport_rates/1.json
  def update
    respond_to do |format|
      if @transport_rate.update(transport_rate_params)
        format.html { redirect_to @transport_rate, notice: 'Transport rate was successfully updated.' }
        format.json { render :index, status: :ok, location: @transport_rate }
      else
        format.html { render :edit }
        format.json { render json: @transport_rate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transport_rates/1
  # DELETE /transport_rates/1.json
  def destroy
    @transport_rate.destroy
    respond_to do |format|
      format.html { redirect_to transport_rates_url, notice: 'Transport rate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transport_rate
      @transport_rate = TransportRate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transport_rate_params
      params.require(:transport_rate).permit(:list_id, :comunne_id, :price)
    end
end
