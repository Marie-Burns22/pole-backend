class CreateBlurbs < ActiveRecord::Migration[6.0]
  def change
    create_table :blurbs do |t|
      t.string :title
      t.string :placement
      t.string :content
      t.string :img

      t.timestamps
    end
  end
end
