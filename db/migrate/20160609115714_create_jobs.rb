class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.integer :base_id
      t.integer :country_id
      t.integer :user_id

      t.timestamps
    end
  end
end
