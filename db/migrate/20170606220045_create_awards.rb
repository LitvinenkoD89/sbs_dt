class CreateAwards < ActiveRecord::Migration[5.0]
  def change
    create_table :awards do |t|
      t.text :description
      t.string :link_photo
      t.timestamps
    end
  end
end
