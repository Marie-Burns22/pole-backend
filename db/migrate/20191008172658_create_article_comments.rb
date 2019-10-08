class CreateArticleComments < ActiveRecord::Migration[6.0]
  def change
    create_table :article_comments do |t|
      t.references :student, null: false, foreign_key: true
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
