class CreateExchangeRates < ActiveRecord::Migration[5.0]
  def change
    create_table :exchange_rates do |t|
      t.integer :base_id
      t.integer :country_id
      t.string :rate

      t.timestamps
    end
  end
end
