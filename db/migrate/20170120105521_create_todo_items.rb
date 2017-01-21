class CreateTodoItems < ActiveRecord::Migration

  def change
      create_table :todo_items do |t|
      t.integer :user_id
      t.string :description
      t.string :due_date

      t.timestamps
    end
  end
end
