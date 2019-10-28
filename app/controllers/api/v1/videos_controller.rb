class Api::V1::VideosController < ApiController
  before_action :set_video, only: [:show, :update, :destroy]

  # GET /videos
  def index
    @videos = Video.all

    render json: VideoSerializer.new(@videos)
  end

  # GET /videos/1
  def show
    render json: VideoSerializer.new(@video)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video
      @video = Video.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def video_params
      params.require(:video).permit(:vid, :title, :description)
    end
end
