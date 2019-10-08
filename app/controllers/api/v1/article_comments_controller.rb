class Api::V1::ArticleCommentsController < ApiController
  before_action :set_article_comment, only: [:show, :update, :destroy]

  # GET /article_comments
  def index
    @article_comments = ArticleComment.all

    render json: @article_comments
  end

  # GET /article_comments/1
  def show
    render json: @article_comment
  end

  # POST /article_comments
  def create
    @article_comment = ArticleComment.new(article_comment_params)

    if @article_comment.save
      render json: @article_comment, status: :created, location: @article_comment
    else
      render json: @article_comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /article_comments/1
  def update
    if @article_comment.update(article_comment_params)
      render json: @article_comment
    else
      render json: @article_comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /article_comments/1
  def destroy
    @article_comment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article_comment
      @article_comment = ArticleComment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def article_comment_params
      params.require(:article_comment).permit(:student_id, :title, :content)
    end
end
