class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :title
      t.text :description
      t.string :link_photo
      t.integer :published, :default => 0
      t.timestamps
    end
  end
end
