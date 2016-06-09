class CreateBases < ActiveRecord::Migration[5.0]
  def change
    create_table :bases do |t|
      t.string :country_code
      t.string :country_name
      t.string :currency_code
      t.string :currency_name

      t.timestamps
    end
  end
end
