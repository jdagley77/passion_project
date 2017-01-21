class CreateCompletedItems < ActiveRecord::Migration

  def change
    create_table :completed_items do |t|
      t.string :description
      t.integer :user_id
      t.string :completion_date

      t.timestamps
    end
  end
end
