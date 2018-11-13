class RemoveStatusFromCoupan < ActiveRecord::Migration[5.2]
  def change
    remove_column :coupans, :status, :string
  end
end
