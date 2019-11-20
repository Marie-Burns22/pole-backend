class Api::V1::AwardsController < ApiController
  before_action :set_award, only: [:show, :update, :destroy]

  # GET /awards
  def index
    @awards = Award.all

    render json: AwardSerializer.new(@awards)
  end

  # GET /awards/1
  def show
    render json: AwardSerializer.new(@award)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_award
      @award = Award.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def award_params
      params.require(:award).permit(:competition, :year, :award)
    end
end
