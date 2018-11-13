class RemoveColumnsFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :password, :string
    remove_column :users, :conform_paswword, :string
  end
end
