class Api::V1::TestimonialsController < ApiController
  before_action :set_testimonial, only: [:show, :update, :destroy]

  # GET /testimonials
  def index
    @testimonials = Testimonial.all

    render json: TestimonialSerializer.new(@testimonials)
  end

  # GET /testimonials/1
  def show
    render json: TestimonialSerializer.new(@testimonial)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testimonial
      @testimonial = Testimonial.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def testimonial_params
      params.require(:testimonial).permit(:author, :content)
    end
end
