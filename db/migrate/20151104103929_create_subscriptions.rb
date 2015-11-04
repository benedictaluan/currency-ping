class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.integer :base_id
      t.integer :country_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
