class ArticleSerializer
  include FastJsonapi::ObjectSerializer
  attributes :published, :title, :content

  has_many :article_comments, serializer: ArticleCommentSerializer
end
