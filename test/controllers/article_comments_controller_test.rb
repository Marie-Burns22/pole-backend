require 'test_helper'

class ArticleCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @article_comment = article_comments(:one)
  end

  test "should get index" do
    get article_comments_url, as: :json
    assert_response :success
  end

  test "should create article_comment" do
    assert_difference('ArticleComment.count') do
      post article_comments_url, params: { article_comment: { content: @article_comment.content, student_id: @article_comment.student_id, title: @article_comment.title } }, as: :json
    end

    assert_response 201
  end

  test "should show article_comment" do
    get article_comment_url(@article_comment), as: :json
    assert_response :success
  end

  test "should update article_comment" do
    patch article_comment_url(@article_comment), params: { article_comment: { content: @article_comment.content, student_id: @article_comment.student_id, title: @article_comment.title } }, as: :json
    assert_response 200
  end

  test "should destroy article_comment" do
    assert_difference('ArticleComment.count', -1) do
      delete article_comment_url(@article_comment), as: :json
    end

    assert_response 204
  end
end
