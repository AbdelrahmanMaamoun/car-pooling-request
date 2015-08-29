class CreateCerpoolingrequests < ActiveRecord::Migration
  def change
    create_table :cerpoolingrequests do |t|
      t.string :email
      t.string :password
      t.integer :user_id
      t.integer :travel_id
      t.string :prefer_from
      t.string :prefer_to

      t.timestamps
    end
  end
end
