class ArticleComment < ApplicationRecord
  belongs_to :student
  belongs_to :article
end
