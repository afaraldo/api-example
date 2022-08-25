class CreatePurchases < ActiveRecord::Migration[7.0]
  def change
    create_table :purchases do |t|
      t.datetime :date
      t.integer :number

      t.timestamps
    end
  end
end
