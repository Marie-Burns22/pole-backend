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
