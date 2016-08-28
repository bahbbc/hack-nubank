class CreateAccountData < ActiveRecord::Migration
  def change
    create_table :account_data do |t|
      t.float :amount
      t.string :category
      t.string :name

      t.timestamps null: false
    end
    add_reference :account_data, :user, index: true
  end
end
