class CreateCoupans < ActiveRecord::Migration[5.2]
  def change
    create_table :coupans do |t|
      t.string :name
      t.integer :price
      t.references :service, foreign_key: true

      t.timestamps
    end
  end
end
