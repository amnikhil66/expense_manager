class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :payer
      t.string :payee
      t.text :notes
      t.string :modeOfPayment
      t.string :paymentType
      t.decimal :amount

      t.timestamps null: false
    end
  end
end
