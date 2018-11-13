class AddDateToCoupan < ActiveRecord::Migration[5.2]
  def change
    add_column :coupans, :date, :datetime
  end
end
