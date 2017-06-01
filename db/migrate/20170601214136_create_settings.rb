class CreateSettings < ActiveRecord::Migration[5.0]
  def change
    create_table :settings do |t|
      t.string :name
      t.string :title
      t.integer :status
      t.timestamps
    end
  end
end
