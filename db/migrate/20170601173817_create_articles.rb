class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :description
      t.text :short_description
      t.string :photo
      t.integer :published, :default => 0
      t.datetime :date
      t.timestamps
    end
  end
end
