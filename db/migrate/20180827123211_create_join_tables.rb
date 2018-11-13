class CreateJoinTables < ActiveRecord::Migration[5.2]
  def change
  	create_table :services_users ,index: false do |t|
  		t.belongs_to :service ,index: true
  		t.belongs_to :user ,index: true
  	end
  end
end
