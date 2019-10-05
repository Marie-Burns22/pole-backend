class CreatePacks < ActiveRecord::Migration[6.0]
  def change
    create_table :packs do |t|
      t.string :name
      t.monetize :price
      t.integer :quantity

      t.timestamps
    end
  end
end
