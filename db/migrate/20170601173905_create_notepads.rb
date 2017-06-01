class CreateNotepads < ActiveRecord::Migration[5.0]
  def change
    create_table :notepads do |t|
      t.integer :article_id
      t.integer :event_id
      t.timestamps
    end
  end
end
