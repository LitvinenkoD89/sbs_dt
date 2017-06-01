class CreatePhotoalbums < ActiveRecord::Migration[5.0]
  def change
    create_table :photoalbums do |t|
      t.integer :photo_id
      t.integer :categoty_id
      t.timestamps
    end
  end
end
