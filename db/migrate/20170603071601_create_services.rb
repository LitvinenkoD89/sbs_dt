class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :name
      t.string :alias_name
      t.text   :description
      t.text   :short_description
    end
  end
end
