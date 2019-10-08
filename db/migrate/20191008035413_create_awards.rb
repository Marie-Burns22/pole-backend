class CreateAwards < ActiveRecord::Migration[6.0]
  def change
    create_table :awards do |t|
      t.string :competition
      t.integer :year
      t.string :award

      t.timestamps
    end
  end
end
