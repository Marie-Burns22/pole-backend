class AddImgToCourse < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :img, :string
  end
end
