class Api::V1::BlurbsController < ApiController
  before_action :set_blurb, only: [:show, :update, :destroy]

  # GET /blurbs
  def index
    @blurbs = Blurb.all

    render json: BlurbSerializer.new(@blurbs)
  end

  # GET /blurbs/1
  def show
    render json: BlurbSerializer.new(@blurb)
  end

  # POST /blurbs
  # def create
  #   @blurb = Blurb.new(blurb_params)

  #   if @blurb.save
  #     render json: @blurb, status: :created, location: @blurb
  #   else
  #     render json: @blurb.errors, status: :unprocessable_entity
  #   end
  # end

  # PATCH/PUT /blurbs/1
  # def update
  #   if @blurb.update(blurb_params)
  #     render json: @blurb
  #   else
  #     render json: @blurb.errors, status: :unprocessable_entity
  #   end
  # end

  # # DELETE /blurbs/1
  # def destroy
  #   @blurb.destroy
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blurb
      @blurb = Blurb.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def blurb_params
      params.require(:blurb).permit(:title, :placement, :content, :img)
    end
end
