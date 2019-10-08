class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :content

  belongs_to :student
  belongs_to :article
end
