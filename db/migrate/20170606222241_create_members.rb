class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.string :name
      t.text :description
      t.string :avatar
      t.timestamps
    end
  end
end
