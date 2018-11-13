class AddStatusToCoupan < ActiveRecord::Migration[5.2]
  def change
    add_column :coupans, :status, :string,  default: true
  end
end
