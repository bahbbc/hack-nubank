class AddEmailToAccountData < ActiveRecord::Migration
  def change
  	add_column :account_data, :email, :string
  end
end
