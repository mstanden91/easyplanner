class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    
    @events = Event.where(user: current_user)
    @categories = Category.all
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @categories = Category.all
  end

  # GET /events/new
  def new
    @categories = Category.all
    @event = Event.new
  end


  # GET /events/1/edit
  def edit
    @event.timefrom = nil
    @event.timeto = nil
  end

  # POST /events
  # POST /events.json
  def create
    p event_params.to_json
    @event = Event.new(event_params)
    @event.timefrom = event_params['timefrom(4i)'].to_s + ":" + event_params['timefrom(5i)'].to_s + " hrs"
    @event.timeto = event_params['timeto(4i)'].to_s + ":" + event_params['timeto(5i)'].to_s + " hrs"
    

    respond_to do |format|
      if @event.save
        format.html { redirect_to user_events_path [current_user, @event], notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to user_events_path(current_user), notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to user_events_path(current_user), notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:namekid, :comunne_id, :date, :timefrom, :timeto, :guestkid, :guestadult, :address, :phone, :agekidsfrom, :agekidsto)
    end
end

