class CreateExchangeRates < ActiveRecord::Migration
  def change
    create_table :exchange_rates do |t|
      t.integer :base_id
      t.integer :country_id
      t.string :rate

      t.timestamps null: false
    end
  end
end
