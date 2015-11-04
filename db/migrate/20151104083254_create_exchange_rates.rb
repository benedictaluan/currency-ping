class CreateExchangeRates < ActiveRecord::Migration
  def change
    create_table :exchange_rates do |t|
      t.string :rate
      t.string :currency_name
      t.string :currency_code
      t.string :base_id

      t.timestamps null: false
    end
  end
end
