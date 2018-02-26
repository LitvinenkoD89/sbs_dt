class AddPriorityToMembers < ActiveRecord::Migration[5.0]
  def change
    add_column :members, :priority, :int
  end
end
