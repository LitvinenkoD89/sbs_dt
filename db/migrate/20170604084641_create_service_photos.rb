class CreateServicePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :service_photos do |t|
      t.string :title
      t.text :description
      t.string :link_photo
      t.integer :priority
      t.integer :service_id
      t.timestamps
    end
  end
end
