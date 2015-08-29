class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
      t.string :title
      t.string :message
      t.string :is_read
      t.integer :travel_id

      t.timestamps
    end
  end
end
