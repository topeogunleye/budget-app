class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.string :name
      t.float :amount
      t.integer :category_id

      t.timestamps
    end
  end
end
