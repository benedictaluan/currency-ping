class CreateBases < ActiveRecord::Migration
  def change
    create_table :bases do |t|
      t.string :country_code
      t.string :country_name
      t.string :currency_code
      t.string :currency_name

      t.timestamps null: false
    end
  end
end
