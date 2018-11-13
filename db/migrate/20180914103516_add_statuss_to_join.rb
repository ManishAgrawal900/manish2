class AddStatussToJoin < ActiveRecord::Migration[5.2]
  def change
    add_column :joins, :statuss, :boolean , default: true
  end
end
