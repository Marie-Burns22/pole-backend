class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :size
      t.string :location
      t.string :description

      t.timestamps
    end
  end
end
