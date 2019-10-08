class ArticleCommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :content

    belongs_to :student, serializer: StudentSerializer
    belongs_to :article, serializer: ArticleSerializer
end
