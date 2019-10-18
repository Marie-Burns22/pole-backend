class Api::V1::TimeSlotsController < ApiController
  before_action :set_time_slot, only: [:show, :update, :destroy]

  # GET /time_slots
  def index
    @time_slots = TimeSlot.where("status =?", "available")

    render json: TimeSlotSerializer.new(@time_slots)
  end

  # GET /time_slots/1
  def show
    render json: TimeSlotSerializer.new(@time_slot)
  end

  # POST /time_slots
  def create
    @time_slot = TimeSlot.new(time_slot_params)

    if @time_slot.save
      render json: @time_slot, status: :created, location: @time_slot
    else
      render json: @time_slot.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /time_slots/1
  def update
      @time_slot.status = "requested" 
      if @time_slot.save
        @time_slots = TimeSlot.where("status =?", "available")
        render json: TimeSlotSerializer.new(@time_slots)
      else
        render json: @time_slot.errors, status: :unprocessable_entity
      end
  end

  # DELETE /time_slots/1
  def destroy
    @time_slot.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_time_slot
      @time_slot = TimeSlot.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def time_slot_params
      params.require(:time_slot).permit(:date, :time, :am_pm, :status, :min)
    end
end
