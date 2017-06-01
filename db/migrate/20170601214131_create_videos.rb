class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.string :title
      t.text :description
      t.string :youtube_url
      t.integer :published, :default => 0
      t.timestamps
    end
  end
end
