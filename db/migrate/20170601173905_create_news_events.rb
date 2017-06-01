class CreateNewsEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :news_events do |t|
      t.integer :news_id
      t.integer :event_id
      t.timestamps
    end
  end
end
