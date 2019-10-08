class ArticleSerializer
  include FastJsonapi::ObjectSerializer
  attributes :published, :title, :content

  # has_many :comments, serializer: CommentSerializer
end
