class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :published
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
