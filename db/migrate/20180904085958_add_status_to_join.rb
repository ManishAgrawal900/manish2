class AddStatusToJoin < ActiveRecord::Migration[5.2]
  def change
    add_column :joins, :status, :integer, default: 0
  end
end
