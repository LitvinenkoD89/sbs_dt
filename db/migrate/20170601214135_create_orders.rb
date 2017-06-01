class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :phone
      t.integer :processed, :default => 0
      t.integer :agent, :default => 0
      t.datetime :date_create
      t.timestamps
    end
    
  end
end
